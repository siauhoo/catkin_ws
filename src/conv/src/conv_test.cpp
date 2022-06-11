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
  
  

  conv::conv reqSw;
  reqSw.request.version = 0;
  reqSw.request.srcmatrix_A_rownum = 16;
  reqSw.request.srcmatrix_A_colnum = 16;
  reqSw.request.srcmatrix_A.resize(16*16);
  
  for (int i = 0; i < 16*16; ++i)
  {
      reqSw.request.srcmatrix_A[i]=i;

  }
  reqSw.request.srcmatrix_B_rownum = 16;
  reqSw.request.srcmatrix_B_colnum = 16;
  reqSw.request.srcmatrix_B.resize(16*16);

  for (int i = 0; i < 16*16; ++i)
  {
      reqSw.request.srcmatrix_B[i]=1;

  }

  reqSw.response.result.resize(16*16);

  //ShowMatrix(srv.request.srcmatrix_A_rownum,srv.request.srcmatrix_A_colnum,srv.request.srcmatrix_A);
  //ShowMatrix(srv.request.srcmatrix_B_rownum,srv.request.srcmatrix_B_colnum,srv.request.srcmatrix_B);


  struct timespec time1 = {0};
  clock_gettime(CLOCK_MONOTONIC, &time1);
  int64_t timestampSw1 = time1.tv_sec * kMicroSecondsPerSecond + time1.tv_nsec/1000;

  bool resultSw = client.call(reqSw);
  if (resultSw)
  {
    ROS_INFO("resultSw success");
  }
  else
  {
    ROS_ERROR("Failed to call resultSw service");
  }

  struct timespec time2 = {0};
  clock_gettime(CLOCK_MONOTONIC, &time2);
  int64_t timestampSw2 = time2.tv_sec * kMicroSecondsPerSecond + time2.tv_nsec/1000;

  cout <<"soft version time: " <<  timestampSw2- timestampSw1<< endl; 


  conv::conv reqHw;
  reqHw.request.version = 1;
  reqHw.request.srcmatrix_A_rownum = 16;
  reqHw.request.srcmatrix_A_colnum = 16;
  reqHw.request.srcmatrix_A.resize(16*16);
  
  for (int i = 0; i < 16*16; ++i)
  {
      reqHw.request.srcmatrix_A[i]=i;

  }
  reqHw.request.srcmatrix_B_rownum = 16;
  reqHw.request.srcmatrix_B_colnum = 16;
  reqHw.request.srcmatrix_B.resize(16*16);

  for (int i = 0; i < 16*16; ++i)
  {
      reqHw.request.srcmatrix_B[i]=1;

  }

  reqHw.response.result.resize(16*16);

  struct timespec time3 = {0};
  clock_gettime(CLOCK_MONOTONIC, &time3);
  int64_t timestampHw1 = time3.tv_sec * kMicroSecondsPerSecond + time3.tv_nsec/1000;

  bool resultHw = client.call(reqHw);
  if (resultHw)
  {
    ROS_INFO("resultHw success");
  }
  else
  {
    ROS_ERROR("Failed to call resultHw service");
  }

  struct timespec time4 = {0};
  clock_gettime(CLOCK_MONOTONIC, &time4);
  int64_t timestampHw2 = time4.tv_sec * kMicroSecondsPerSecond + time4.tv_nsec/1000;

  cout <<"hardware version time: " <<  timestampHw2- timestampHw1<< endl; 



  bool err=0;
  for (int i = 0; i < 16*16; i++) {
    if(reqSw.response.result[i] != reqHw.response.result[i]) {
      err = 1;
    }
  }

  if (err == 0) {
    cout << "SW and HW results match!" << endl;
  }
  else {
    cout << "ERROR: results mismatch" << endl;
  }
  //ShowMatrix(srv.request.srcmatrix_A_rownum,srv.request.srcmatrix_B_colnum,srv.response.result);

  return 0;
}