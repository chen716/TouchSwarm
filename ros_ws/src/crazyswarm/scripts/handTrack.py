#!/usr/bin/env python
import rospy
from geometry_msgs.msg import TransformStamped
import math

cf1_pos = None
hand1_pos = None
hand1_ori = None
last_dist = None
error_rate = 0.01

def callback_cf1(data):
    global cf1_pos
    cf1_pos = data.transform.translation
    compute_distance()

def callback_hand1(data):
    global hand1_pos
    hand1_pos = data.transform.translation
    hand1_ori = data.transform.orientation
    compute_distance()

def compute_distance():
    global cf1_pos, hand1_pos, last_dist
    if cf1_pos is None or hand1_pos is None:
        return
    dist = math.sqrt((cf1_pos.x - hand1_pos.x)**2 + (cf1_pos.y - hand1_pos.y)**2 + (cf1_pos.z - hand1_pos.z)**2)
    if last_dist is None or abs(dist - last_dist) > error_rate:
    	rospy.loginfo("Hand Position = %f,%f,%f", cf1_pos.x,cf1_pos.y,cf1_pos.z)
    	rospy.loginfo("Drone Position = %f.%f.%f", hand1_pos.x,hand1_pos.y,hand1_pos.z)
    	rospy.loginfo("Euclidean distance = %f", dist)
    	
    	
    	if last_dist is not None:
    		rospy.loginfo("error in distance = %f", abs(dist - last_dist))
    	last_dist = dist

def listener():
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("/vicon/cf3/cf3", TransformStamped, callback_cf1)
    rospy.Subscriber("/vicon/hand1/hand1", TransformStamped, callback_hand1)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()


