"""Takeoff-hover-land for one CF. Useful to validate hardware config."""

from pycrazyswarm import *
from crazyswarm.msg import GenericLogData
import rospy
from datetime import datetime
import numpy as np

TAKEOFF_DURATION = 5
HOVER_DURATION = 15.0
global reached
swarm = Crazyswarm()
timeHelper = swarm.timeHelper
cf = swarm.allcfs.crazyflies[0]

def fullStateEst(data):
    
    dt = datetime.now()
    ts = datetime.timestamp(dt)
    val_list = [ts]+list(data.values)
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", val_list)
    height = float(val_list[1])
    
   
    

def main():
    reached = True
    rospy.Subscriber("/cf1/log1", GenericLogData, fullStateEst)
    # self.cmdFullStateMsg = FullState()
    default_P_gain = 2.0
    default_I_gain = 0.5
    default_D_gain = 0.0
    new_P_gain = 1.0
    new_I_gain = 0.0
    new_D_gain = 0.0

    
    timeHelper.sleep(1 )#+ HOVER_DURATION)
    
    # cf.setParam('posCtlPid/zKi', str(new_I_gain))
    print(cf.position())
    cf.takeoff(targetHeight=0.45, duration=TAKEOFF_DURATION)
    
    pos = np.array([0, 0.5, 1.0]) #np.array(cf.initialPosition) + 
    #cf.cmdPosition(pos)
    timeHelper.sleep(25)
    start = timeHelper.time()
    #cf.setParam('posCtlPid/zKp', 3.0)
    #cf.setParam('posCtlPid/zKi', 0.0)
    #cf.setParam('posCtlPid/thrustBase', 38000.0)
    # pos = np.array([0, 0, 0.45])
    # while(timeHelper.time() - start <   15.0):
    #     #cf.cmdPosition(pos)
    #     timeHelper.sleep(0.01 )#+ HOVER_DURATION)
    #     #print(cf.position())
    #     if(cf.position()[2] < 0.38) and reached :
    #         #cf.setParam('posCtlPid/zKp', 2.0)
    #         #pos = np.array([0, 0, 0.3])
    #         print("******* stopped now ********")
    #         #cf.emergency()
    #         cf.land(targetHeight=0.04, duration=0.5)
    #         break
    #         #cf.cmdPosition(pos)
    #         reached = False
            
        

    # if(cf.po)
    print("zkp:"+str(cf.getParam('posCtlPid/zKp')))
    # if height < 0.3 and reached: 
    #     print("changed pid")
    #     cf.setParam('posCtlPid/zKp', 1.0)
    #     print("changeed here :"+str(cf.getParam('posCtlPid/zKp')))
    #     pos = np.array([0, 0, 0.3])
    #     cf.cmdPosition(pos)
    
    
    
    
    
    
    
    
    # rospy.loginfo("changing pid to 1.5")
    #cf.setParam('ctrlMel/kp_z', 1.25)
    
    # timeHelper.sleep(HOVER_DURATION)
    # #cf.setParam('posCtlPid/zKp', 2.0)
    # #rospy.loginfo("changing pid to 2.0")
    # #cf.setParam('ctrlMel/kp_z', 2.0)
    
    # timeHelper.sleep(HOVER_DURATION)
    #cf.setParam('ctrlMel/kp_z', 1.25)
    #rospy.loginfo("changing pid to 1.25")
    # cf.setParam('posCtlPid/zKp', 4.0)
    # timeHelper.sleep(HOVER_DURATION)
    # cf.setParam('posCtlPid/zKp', 0.50)
    #timeHelper.sleep(HOVER_DURATION)
    cf.land(targetHeight=0.04, duration=2.5)
    #timeHelper.sleep(2.5)
    rospy.spin()


if __name__ == "__main__":
    main()
