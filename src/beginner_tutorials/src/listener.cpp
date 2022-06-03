#include "ros/ros.h"
#include "std_msgs/String.h"
#include "beginner_tutorials/Event.h"

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<beginner_tutorials::Event>("call_back");
  beginner_tutorials::Event srv;
  srv.request.content = "get msg";
  if (client.call(srv))
  {
    ROS_INFO("notify taker");
  }
  else
  {
    ROS_ERROR("Failed to call service call_back");
  }
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle m;
  ros::Subscriber sub = m.subscribe("chatter", 1000, chatterCallback);
  ros::spin();
  return 0;
}
