#include "ros/ros.h"
#include "std_msgs/String.h"
#include "conv/conv.h"

#include <sstream>
#include <iostream>
#include <string>
#include <cstdlib>

typedef int int32;
typedef int8_t int8;
typedef uint8_t uint8;

using namespace std;

void ShowMatrix(int srcmatrix_A_rownum, int srcmatrix_A_colnum, std::vector<int8>&srcmatrix_A) {

	cout<<"-------------------------------------------------------------------"<<endl;
	for (int i = 0; i < srcmatrix_A_rownum; ++i)
	{
		for (int j = 0; j < srcmatrix_A_colnum; ++j)
		{
			cout<<static_cast<int>(srcmatrix_A[i*srcmatrix_A_colnum + j]) << " ";
		}
		  cout << endl;

	}
	cout<<"-------------------------------------------------------------------"<<endl;

}

void ShowMatrix(int srcmatrix_A_rownum, int srcmatrix_A_colnum, std::vector<uint8>&srcmatrix_A) {
		cout<<"-------------------------------------------------------------------"<<endl;

		for (int i = 0; i < srcmatrix_A_rownum; ++i)
	{
		for (int j = 0; j < srcmatrix_A_colnum; ++j)
		{
			cout<<static_cast<unsigned int>(srcmatrix_A[i*srcmatrix_A_colnum + j]) << " ";

		}
				  cout << endl;


	}
		cout<<"-------------------------------------------------------------------"<<endl;

}

void ShowMatrix(int srcmatrix_A_rownum, int srcmatrix_A_colnum, std::vector<int>&srcmatrix_A) {
		cout<<"-------------------------------------------------------------------"<<endl;

		for (int i = 0; i < srcmatrix_A_rownum; ++i)
	{
		for (int j = 0; j < srcmatrix_A_colnum; ++j)
		{
			cout<<srcmatrix_A[i*srcmatrix_A_colnum + j] << " ";

		}
				  cout << endl;


	}
		cout<<"-------------------------------------------------------------------"<<endl;

}