#!/usr/bin/env python3
from shutil import move
import rospy
from geometry_msgs.msg import Pose
from math import radians
import copy 
from gripperControl import *
from std_msgs.msg import Bool

flag = False

def callback(data, move_group):
    global flag
    flag = data.data
    if flag:
        print("Button has been pressed")
    else:
        print("Button has been released")


def press(id, move_group):
    move_group.go([radians(0), radians(-120), radians(100), radians(20), radians(90), radians(-90)])
    gripperPos("close")
    move_group.set_pose_reference_frame('base_link')
    rospy.Subscriber("/button"+str(id), Bool, callback, move_group)
    if rospy.has_param('tag'+str(id)):
        pose = rospy.get_param('tag'+str(id))
        position = pose[0]
        button = Pose()
        currentPose = move_group.get_current_pose().pose
        waypoints = []
        currentPose.position.x = position[0] - 0.122
        
        currentPose.position.z = position[2] - 0.055
        waypoints.append(copy.deepcopy(currentPose))
        (plan, fraction) = move_group.compute_cartesian_path(waypoints, 0.01, 0.0)  
        move_group.execute(plan, wait=True)
        
        if id >= 1:
            currentPose.position.y = position[1] 
            waypoints = []
            waypoints.append(copy.deepcopy(currentPose))
            (plan, fraction) = move_group.compute_cartesian_path(waypoints, 0.005, 0.0)
            move_group.execute(plan, wait=True)

        #extend
        max_steps = 0
        if id in (1,2): #for real case put 1,4,7 (1st column buttons)
            max_steps = 10
        elif id in (4,7,8,3): #for real case put 2,3,5,6,8 (2nd column )
            max_steps = 15
        else:
            max_steps = 17
        current_step = 0
        while not flag and current_step < max_steps:
            currentPose.position.x += 0.001
            waypoints = []
            waypoints.append(copy.deepcopy(currentPose))
            (plan, fraction) = move_group.compute_cartesian_path(waypoints, 0.005, 0.0)
            move_group.execute(plan, wait=True)
            current_step += 1
            # rospy.sleep(0.5) 

        # If flag is still False, execute the 'comeback' step
        if not flag:
            currentPose.position.x -= 0.03
            waypoints = []
            waypoints.append(copy.deepcopy(currentPose))
            (plan, fraction) = move_group.compute_cartesian_path(waypoints, 0.005, 0.0)
            move_group.execute(plan, wait=True)

    
        #if id in (8,7): #for the real case put 7,8,9
            #move_group.go([radians(0), radians(-100), radians(140), radians(-40), radians(90), radians(-90)])
        if id in (2,3,4): #for the real case put 4-9
            move_group.go([radians(-70), radians(-130), radians(130), radians(0), radians(20), radians(-90)])
        else:
            move_group.go([radians(0), radians(-120), radians(100), radians(20), radians(90), radians(-90)])
    else:
        rospy.logerr("Parameter 'tag%d' not found." % id)
