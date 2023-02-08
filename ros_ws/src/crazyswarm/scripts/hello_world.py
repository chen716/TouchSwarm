"""Takeoff-hover-land for one CF. Useful to validate hardware config."""

from pycrazyswarm import *
from crazyswarm.msg import GenericLogData
import rospy
from datetime import datetime


TAKEOFF_DURATION = 2.5
HOVER_DURATION = 5.0

def fullStateEst(data):
    dt = datetime.now()
    ts = datetime.timestamp(dt)
    val_list = [ts]+list(data.values)
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", val_list)
    
    

def main():
    swarm = Crazyswarm()
    timeHelper = swarm.timeHelper
    cf = swarm.allcfs.crazyflies[0]
    rospy.Subscriber("/cf4/log1", GenericLogData, fullStateEst)
    # self.cmdFullStateMsg = FullState()
    cf.takeoff(targetHeight=1.0, duration=TAKEOFF_DURATION)
    timeHelper.sleep(TAKEOFF_DURATION + HOVER_DURATION)
    cf.land(targetHeight=0.04, duration=2.5)
    timeHelper.sleep(TAKEOFF_DURATION)
    rospy.spin()


if __name__ == "__main__":
    main()
