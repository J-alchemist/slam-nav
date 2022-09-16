#include <ros/ros.h>
#include "geometry_msgs/PoseWithCovarianceStamped.h"

/* 
rosrun amcl_showmsg amcl_showmsg
*/
void amclpose_listenerCallback(const geometry_msgs::PoseWithCovarianceStamped msg)
{

    ROS_INFO("[ amcl: doom-map ] Info: x:%f y:%f z:%f", msg.pose.pose.position.x, msg.pose.pose.position.y, msg.pose.pose.position.z);


//可以使用转换函数讲四元素表示的方位转换为欧拉角（俯仰、横滚、偏航等）		

}


int main(int argc, char** argv)
{

	ros::init(argc, argv, "amcl_pose_listener");//node name

	ros::NodeHandle nh;

	ros::Subscriber person_info_sub = nh.subscribe("/amcl_pose", 1, amclpose_listenerCallback);


   	ros::spin();


	return 0;

}
