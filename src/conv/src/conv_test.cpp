#include "ros/ros.h"
#include "std_msgs/String.h"
#include "conv/conv.h"
#include "conv/show.h"

#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <ctime>
#include <time.h>

using namespace std;

int kMicroSecondsPerSecond = 1000 * 1000;

int main(int argc, char **argv)
{

  srand(time(0));

  ros::init(argc, argv, "conv_test");
  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<conv::conv>("call_back");
  
  

  conv::conv srv;
  srv.request.version = 0;
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


  struct timespec time1 = {0};
  clock_gettime(CLOCK_MONOTONIC, &time1);
  int64_t timestamp1 = time1.tv_sec * kMicroSecondsPerSecond + time1.tv_nsec/1000;

  if (client.call(srv))
  {
    ROS_INFO("notify taker");
  }
  else
  {
    ROS_ERROR("Failed to call service call_back");
  }

  struct timespec time2 = {0};
  clock_gettime(CLOCK_MONOTONIC, &time2);
  int64_t timestamp2 = time2.tv_sec * kMicroSecondsPerSecond + time2.tv_nsec/1000;

  cout <<"soft version time: " <<  timestamp2- timestamp1<< endl; 

  ShowMatrix(srv.request.srcmatrix_A_rownum,srv.request.srcmatrix_B_colnum,srv.response.result);

  return 0;
}