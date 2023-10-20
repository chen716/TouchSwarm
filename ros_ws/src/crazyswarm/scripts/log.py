
"""Takeoff-hover-land for one CF. Useful to validate hardware config."""
from crazyswarm.srv import *
from pycrazyswarm import Crazyswarm
from tf import TransformListener
import numpy as np
from crazyswarm.msg import TrajectoryPolynomialPiece, FullState, Position, VelocityWorld, GenericLogData
import rospy
import time
#rospy.init_node('listener', anonymous=True)

stime = time.time()
count = 0
norm = np.array([0.0,0.0,0.0])
def callback(data):
    global count, norm
    if count < 5:
        norm[0:3] += np.array(data.values[0:3])
        count+=1
    if count == 5:
        norm = np.array(norm)
        norm= norm* 0.2
        count+=1 
        
    print("%s,%s,%s,%s,%s"%( data.values[0]-norm[0],data.values[1]-norm[1],data.values[2]-norm[2],data.values[3],(time.time()-stime)))
    #print(data.values[0]+","+str(data.values[1]+",",data.values[2]+","+data.values[3]+",",(time.time()-stime))
    #print("in callback")
   
rospy.init_node('logger', anonymous=True)
rospy.Subscriber("/cf1/log1", GenericLogData, callback)
rospy.spin()
