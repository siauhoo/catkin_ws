#include "ros/ros.h"
#include "std_msgs/String.h"

#include <sstream>
#include <iostream>
#include <string>

using namespace std;

/**
 * 
input:  W int8[16*16]
        A uint8[16*16]
output: O uint8[16*16]
void MultMatrix(int row_1, int col_1, double *temp1, int row_2, int col_2, double *temp2, double *result)
 */
void MultMatrix(int srcmatrix_A_rownum, int srcmatrix_A_colnum, int8 *srcmatrix_A, 
	int srcmatrix_B_rownum, int srcmatrix_B_colnum, uint8 *srcmatrix_B, int32 *result)
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

void Relu6(int32 *src,int count, int8 *target) {

	for (int i = 0; i < count; ++i)
	{
		if (src[i]<=0)
		{
			target[i]=0;
		} else if (src[i]>=255)
		{
			target[i]=255;
		}{
			target[i]=int8_t(1684234849>>8)
		}
	}
}

