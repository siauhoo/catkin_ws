#include "ros/ros.h"
#include "std_msgs/String.h"
#include "beginner_tutorials/Event.h"

#include <sstream>
#include <iostream>
#include <string>

using namespace std;

bool call_back(beginner_tutorials::Event::Request&req,beginner_tutorials::Event::Response &res)
{
  ROS_INFO("listener call_back");
  return true;
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle m;

  ros::Publisher chatter_pub = m.advertise<std_msgs::String>("chatter", 1000);

  ros::NodeHandle n;
  ros::ServiceServer service = n.advertiseService("call_back", call_back);

  ros::Rate loop_rate(10);
  int count = 0;
  while (ros::ok())
  {
    std_msgs::String msg;

    //std::stringstream ss;
    //ss << "hello world " << count;
    string ss;
    cin>>ss;
    msg.data = ss;

    ROS_INFO("%s", msg.data.c_str());

    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
