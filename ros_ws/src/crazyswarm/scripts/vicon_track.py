"""Track vicon data"""
import rospy
from std_msgs.msg import String
from nav_msgs.msg import Odometry
def callback(data):
    rospy.loginfo(rospy.get_caller_id()+"I heard %s",data)

def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("/vicon/cf2/cf2", String, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
