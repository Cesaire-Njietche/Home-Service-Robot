#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include "nav_msgs/Odometry.h"
#include "add_markers/Pickup.h"

visualization_msgs::Marker marker;
ros::Publisher marker_pub;
ros::Subscriber odom_sub;

bool handle_pick_up(add_markers::Pickup::Request & req, add_markers::Pickup::Response & res){
  int rq = (int) req.goal_order;
  if(rq == 1){//First goal reached
    marker.action = visualization_msgs::Marker::DELETE;
    marker_pub.publish(marker);
    //ros::Duration(5).sleep();
    res.feedback = "Fisrt goal reached!";
  }
  else if(rq == 2){//Second goal reached
    marker.action = visualization_msgs::Marker::ADD;
      // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
    marker.pose.position.x = 2.5;
    marker.pose.position.y = -7;
    marker.pose.position.z = 0;
    marker.pose.orientation.x = 0.0;
    marker.pose.orientation.y = 0.0;
    marker.pose.orientation.z = 0.0;
    marker.pose.orientation.w = 1.0;
    
        // Set the scale of the marker -- 1x1x1 here means 1m on a side
    marker.scale.x = .5;
    marker.scale.y = .4;
    marker.scale.z = .1;
    
        // Set the color -- be sure to set alpha to something non-zero!
    marker.color.r = 0.0f;
    marker.color.g = .5f;
    marker.color.b = 1.0f;
    marker.color.a = 1.0;
    
    marker.lifetime = ros::Duration();
     
    marker_pub.publish(marker);
    res.feedback = "Second goal reached!";
  }
  
  ROS_INFO_STREAM(res);
  return true;

}

int main( int argc, char** argv )
{
  ros::init(argc, argv, "add_markers");
  ros::NodeHandle n;
  ros::Rate r(1);
  
   // Set our initial shape type to be a cube
  uint32_t shape = visualization_msgs::Marker::CUBE;
  marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
  
  //A service server to handle requests when the base reaches differents goals.
  ros::ServiceServer service = n.advertiseService("/pickup", handle_pick_up);
  
  
   // Set the frame ID and timestamp.  See the TF tutorials for information on these.
  marker.header.frame_id = "map";
  marker.header.stamp = ros::Time::now();
 
     // Set the namespace and id for this marker.  This serves to create a unique ID
     // Any marker sent with the same namespace and id will overwrite the old one
  marker.ns = "add_markers";
  marker.id = 0;
 
     // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
  marker.type = shape;
     // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
  marker.action = visualization_msgs::Marker::ADD;
  
      // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
  marker.pose.position.x = 2.5;
  marker.pose.position.y = 4;
  marker.pose.position.z = 0;
  marker.pose.orientation.x = 0.0;
  marker.pose.orientation.y = 0.0;
  marker.pose.orientation.z = 0.0;
  marker.pose.orientation.w = 1.0;
  
      // Set the scale of the marker -- 1x1x1 here means 1m on a side
  marker.scale.x = .5;
  marker.scale.y = .4;
  marker.scale.z = .1;
  
      // Set the color -- be sure to set alpha to something non-zero!
  marker.color.r = 0.0f;
  marker.color.g = .5f;
  marker.color.b = 1.0f;
  marker.color.a = 1.0;
  
  marker.lifetime = ros::Duration();
  
      // Publish the marker
  while (marker_pub.getNumSubscribers() < 1)
  {
    if (!ros::ok())
    {
      return 0;
    }
    ROS_WARN_ONCE("Waiting for a subscriber to the marker");
    sleep(1);
  }
  marker_pub.publish(marker);
  
  ros::spin();
  
}

