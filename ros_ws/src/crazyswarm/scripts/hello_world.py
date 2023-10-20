"""Takeoff-hover-land for one CF. Useful to validate hardware config."""

from pycrazyswarm import *
from crazyswarm.msg import GenericLogData
import rospy
from datetime import datetime
import numpy as np
from geometry_msgs.msg import TransformStamped
from datetime import datetime
from geometry_msgs.msg import PoseStamped

from tf2_msgs.msg import TFMessage

# Get the current date and time
current_time = datetime.now()

# Format the date and time to generate the filename
filename = current_time.strftime("%Y-%m-%d-%H-%M.log")

TAKEOFF_DURATION = 5
HOVER_DURATION =10.0
global reached
swarm = Crazyswarm()
timeHelper = swarm.timeHelper
cf = swarm.allcfs.crazyflies[0]

#log_directory = "/home/harvilab/logs/vicon/vertical/"  # Specify your desired directory path
#log_directory = "/home/harvilab/logs/vicon/lateral_dist/"  # Specify your desired directory path
log_directory = "/home/harvilab/logs/vicon/lateral_time/"  # Specify your desired directory path

filename = datetime.now().strftime("%Y-%m-%d-%H-%M-%S_Pos.log")
filename2 = datetime.now().strftime("%Y-%m-%d-%H-%M-%S_State.log")
log_file_path = log_directory + filename
log_file_path2 = log_directory + filename2
def pose_callback(data):
    # Extract the ROS timestamp
    ros_timestamp = data.header.stamp
    formatted_timestamp = f"{ros_timestamp.secs}.{ros_timestamp.nsecs:09d}"

    position = data.pose.position
    orientation = data.pose.orientation
    log_message = f"[{formatted_timestamp}] Position: x={position.x}, y={position.y}, z={position.z}; Orientation: x={orientation.x}, y={orientation.y}, z={orientation.z}, w={orientation.w}\n"
    with open(log_file_path, "a") as log_file:
        log_file.write(log_message)


def vicon_callback(data):
    # Get current ROS time
    ros_time = rospy.get_rostime()
    formatted_ros_time = f"{ros_time.secs}.{ros_time.nsecs:09d}"

    # Assuming you want the transform for 'cf1'
    for t in data.transforms:
        if t.child_frame_id == "cf1":
            position = t.transform.translation
            orientation = t.transform.rotation
            log_message = f"[{formatted_ros_time}] Position: x={position.x}, y={position.y}, z={position.z}; Orientation: x={orientation.x}, y={orientation.y}, z={orientation.z}, w={orientation.w}\n"
            with open(log_file_path, "a") as log_file:
                log_file.write(log_message)
            break

def fullStateEst(data):
    dt = datetime.now()
    ts = datetime.timestamp(dt)
    val_list = [ts] + list(data.values)
    log_message = f"{rospy.get_caller_id()} I heard {val_list}\n"
    rospy.loginfo(log_message)
    height = float(val_list[1])
    with open(log_file_path2, "a") as log_file:
        log_file.write(log_message)

    

def main():
    reached = True
    rospy.Subscriber("/cf1/log1", GenericLogData, fullStateEst)
    rospy.Subscriber("/tf", TransformStamped, vicon_callback)
    #rospy.Subscriber("/cf1/pose", PoseStamped, pose_callback)


    # self.cmdFullStateMsg = FullState()
    default_P_gain = 2.0
    default_I_gain = 0.5
    default_D_gain = 0.0
    new_P_gain = 1.0
    new_I_gain = 0.0
    new_D_gain = 0.0

    
    timeHelper.sleep(1 )#+ HOVER_DURATION)
    
   
    cf.takeoff(targetHeight=0.650, duration=TAKEOFF_DURATION)
    
    timeHelper.sleep(5)
    start = timeHelper.time()
    #low pid: 1.25
    #mid pid: 2.5
    #stiff: 3.5
    #cf.setParam('posCtlPid/zKp', 3.50)
    #cf.setParam('posCtlPid/zKp', 1.250)
    #cf.setParam('posCtlPid/zKi', 0.0)
   
    timeHelper.sleep(HOVER_DURATION)
    #cf.cmdVel(0,0,0,70)
    #print("commanded vel")
    #@timeHelper.sleep(10)
    cf.land(targetHeight=0.04, duration=2.5)
    timeHelper.sleep(2.5)
    rospy.spin()


if __name__ == "__main__":
    main()
