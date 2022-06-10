#include "ros/ros.h"
#include "std_msgs/String.h"
#include "conv/conv.h"
#include "conv/show.h"

#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <ctime>

using namespace std;

int main(int argc, char **argv)
{

  srand(time(0));

  ros::init(argc, argv, "conv_test");
  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<conv::conv>("call_back");
  
  conv::conv srv;
  srv.request.srcmatrix_A_rownum = 16;
  srv.request.srcmatrix_A_colnum = 16;
  srv.request.srcmatrix_A.resize(16*16);

  for (int i = 0; i < 16*16; ++i)
  {
      srv.request.srcmatrix_A[i]=i;

  }
  
  


  srv.request.srcmatrix_B_rownum = 16;
  srv.request.srcmatrix_B_colnum = 16;
  srv.request.srcmatrix_B.resize(16*16);

  for (int i = 0; i < 16*16; ++i)
  {
      srv.request.srcmatrix_B[i]=1;

  }

 

  ShowMatrix(srv.request.srcmatrix_A_rownum,srv.request.srcmatrix_A_colnum,srv.request.srcmatrix_A);
  ShowMatrix(srv.request.srcmatrix_B_rownum,srv.request.srcmatrix_B_colnum,srv.request.srcmatrix_B);

  if (client.call(srv))
  {
    ROS_INFO("notify taker");
  }
  else
  {
    ROS_ERROR("Failed to call service call_back");
  }

 

  ShowMatrix(srv.request.srcmatrix_A_rownum,srv.request.srcmatrix_B_colnum,srv.response.result);

  return 0;
}