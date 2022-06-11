#include "ros/ros.h"
#include "std_msgs/String.h"
#include "conv/conv.h"
#include "conv/show.h"
#include "conv/xacc_mmult_hw.h"
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#include <sstream>
#include <iostream>
#include <string>
#include <cstdlib>

typedef int int32;
typedef int8_t int8;
typedef uint8_t uint8;
typedef uint32_t u32;

const u32 XACC_BASE = 0x40000000;
struct xacc {
	volatile uint32_t* ptr;
};

using namespace std;




/**
 * 
 * C语言中的int8_t,uint8_t, int16_t,uint16_t, int32_t,uint32_t, int64_t,uint64_t和int数组
input:  W int8[16*16]
        A uint8[16*16]
output: O uint8[16*16]
void MultMatrix(int row_1, int col_1, double *temp1, int row_2, int col_2, double *temp2, double *result)
 */
void MultMatrix(int srcmatrix_A_rownum, int srcmatrix_A_colnum, std::vector<int8>&srcmatrix_A, 
	int srcmatrix_B_rownum, int srcmatrix_B_colnum, std::vector<uint8>& srcmatrix_B, std::vector<int32>& result)
{
	int times = srcmatrix_A_colnum;//times=col_1=row_2 为确定result某元素时进行的乘法(加法)次数
	int row_result=0;
	int col_result=0;
	int num = 0;
	//num为一维数组形式的result的索引
	//row_result col_result为二维数组形式的result的索引
	for (row_result = 1; row_result <= srcmatrix_A_rownum; row_result++)
	{
		for (col_result = 1; col_result <= srcmatrix_B_colnum; col_result++)
		{
			result[num] = 0;
			for (int i=0; i <= times-1; i++)
			{
				result[num] += srcmatrix_A[(row_result - 1)*srcmatrix_A_colnum + i] * srcmatrix_B[i*srcmatrix_B_colnum + col_result -1 ];
			}
			num++;
		}
	}
}

void Relu6(std::vector<int32>& src,int count, std::vector<uint8>& target) {

	for (int i = 0; i < count; ++i)
	{
		if (src[i]<=0)
		{
			target[i]=0;
		} else if (src[i]>=255)
		{
			target[i]=255;
		} else {
			target[i]=int8_t(src[i]>>8);
		}
	}
}


void mmul_sw(conv::conv::Request&req,conv::conv::Response &res) {
	int32 srcmatrix_A_rownum = req.srcmatrix_A_rownum;
	int32 srcmatrix_B_colnum = req.srcmatrix_B_colnum;
	vector<int32> array ;
	array.resize(srcmatrix_A_rownum*srcmatrix_B_colnum);

 
 	//ShowMatrix(req.srcmatrix_A_rownum,req.srcmatrix_A_colnum,req.srcmatrix_A);
 	//ShowMatrix(req.srcmatrix_B_rownum,req.srcmatrix_B_colnum,req.srcmatrix_B);

	MultMatrix(req.srcmatrix_A_rownum,req.srcmatrix_A_colnum,req.srcmatrix_A,
		req.srcmatrix_B_rownum,req.srcmatrix_B_colnum,req.srcmatrix_B,array);


 	//ShowMatrix(srcmatrix_A_rownum,srcmatrix_B_colnum,array);


	res.result.resize(srcmatrix_A_rownum*srcmatrix_B_colnum);
	Relu6(array,srcmatrix_A_rownum*srcmatrix_B_colnum,res.result);
}




void xacc_init(struct xacc* acc) {
	int fd = open("/dev/mem", O_RDWR | O_SYNC);
	void* addr = mmap(0,4096,PROT_READ | PROT_WRITE,MAP_SHARED,fd,XACC_BASE);
	acc->ptr = (volatile uint32_t*)addr;
	close(fd);
}


u32 XAcc_mmult_Write_A_Bytes(u32 XACC_BASE, int offset, char *data, int length) {

    int i;
    if ((offset + length) > (XACC_MMULT_CONTROL_ADDR_A_HIGH - XACC_MMULT_CONTROL_ADDR_A_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(XACC_BASE + XACC_MMULT_CONTROL_ADDR_A_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAcc_mmult_Write_W_Bytes(u32 XACC_BASE, int offset, char *data, int length) {
    int i;

    if ((offset + length) > (XACC_MMULT_CONTROL_ADDR_W_HIGH - XACC_MMULT_CONTROL_ADDR_W_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(XACC_BASE + XACC_MMULT_CONTROL_ADDR_W_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAcc_mmult_Read_O_Bytes(u32 XACC_BASE, int offset, char *data, int length) {
    int i;

    if ((offset + length) > (XACC_MMULT_CONTROL_ADDR_O_HIGH - XACC_MMULT_CONTROL_ADDR_O_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(XACC_BASE + XACC_MMULT_CONTROL_ADDR_O_BASE + offset + i);
    }
    return length;
}

/**
 *input:  W int8[16*16]
        	A uint8[16*16]
					output: O uint8[16*16]
```
 * */
void xacc_comp(struct xacc* acc,conv::conv::Request&req,conv::conv::Response &res) 
{

	int W_BASE = XACC_MMULT_CONTROL_ADDR_W_BASE/4;
	int A_BASE = XACC_MMULT_CONTROL_ADDR_A_BASE/4;
	int ADDR_O_BASE = XACC_MMULT_CONTROL_ADDR_O_BASE/4;
	
	XAcc_mmult_Write_W_Bytes(XACC_BASE,0,reinterpret_cast<char*>(&req.srcmatrix_A[0]),XACC_MMULT_CONTROL_DEPTH_W);

	XAcc_mmult_Write_A_Bytes(XACC_BASE,0,reinterpret_cast<char*>(&req.srcmatrix_B[0]),XACC_MMULT_CONTROL_DEPTH_A);
	
	acc->ptr[0] = 0x01 | (acc->ptr[0] & 0x80);
	while (!(acc->ptr[0] & 0x02)) {
		usleep(50);
	}

	int32 srcmatrix_A_rownum = req.srcmatrix_A_rownum;
	int32 srcmatrix_B_colnum = req.srcmatrix_B_colnum;
	res.result.resize(srcmatrix_A_rownum*srcmatrix_B_colnum);
	XAcc_mmult_Read_O_Bytes(XACC_BASE,0,reinterpret_cast<char*>(&res.result[0]),XACC_MMULT_CONTROL_DEPTH_O);
}


void mmul_hw(conv::conv::Request&req,conv::conv::Response &res) {
	xacc acc;
	xacc_init(&acc);
	xacc_comp(&acc,req,res);
}

bool call_back(conv::conv::Request&req,conv::conv::Response &res)
{
	cout<<"begin call_back" << endl;
	switch (req.version)
	{
        case 0 :
            mmul_sw(req,res);
            break;
        case 1 :
        		mmul_hw(req,res);
            break;
        default:
            cout << "unknow version!\n";
            return false;
  }
	
	//ShowMatrix(srcmatrix_A_rownum,srcmatrix_B_colnum,res.result);

  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "conv_core");
  
  ros::NodeHandle n;
  ros::ServiceServer service = n.advertiseService("call_back", call_back);
  ros::spin();

  return 0;
}
