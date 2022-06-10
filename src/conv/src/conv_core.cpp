#include "ros/ros.h"
#include "std_msgs/String.h"
#include "conv/conv.h"
#include "conv/show.h"


#include <sstream>
#include <iostream>
#include <string>
#include <cstdlib>

typedef int int32;
typedef int8_t int8;
typedef uint8_t uint8;

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

bool call_back(conv::conv::Request&req,conv::conv::Response &res)
{
	cout<<"begin call_back" << endl;

	int32 srcmatrix_A_rownum = req.srcmatrix_A_rownum;
	int32 srcmatrix_B_colnum = req.srcmatrix_B_colnum;
	vector<int32> array ;
	array.resize(srcmatrix_A_rownum*srcmatrix_B_colnum);

 
 	ShowMatrix(req.srcmatrix_A_rownum,req.srcmatrix_A_colnum,req.srcmatrix_A);
 	ShowMatrix(req.srcmatrix_B_rownum,req.srcmatrix_B_colnum,req.srcmatrix_B);

	MultMatrix(req.srcmatrix_A_rownum,req.srcmatrix_A_colnum,req.srcmatrix_A,
		req.srcmatrix_B_rownum,req.srcmatrix_B_colnum,req.srcmatrix_B,array);


 	ShowMatrix(srcmatrix_A_rownum,srcmatrix_B_colnum,array);


	res.result.resize(srcmatrix_A_rownum*srcmatrix_B_colnum);
	Relu6(array,srcmatrix_A_rownum*srcmatrix_B_colnum,res.result);
	
	ShowMatrix(srcmatrix_A_rownum,srcmatrix_B_colnum,res.result);


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
