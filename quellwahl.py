#!/usr/bin/env python
import quellwahl
import rospy

from geometry_msgs.msg import Twist
from std_msgs.msg import Byte

PAKETNAME = "quellwahl"

QUELLE	  = "twistSource"
TOPICA    = "topicQuelleA"
TOPICB    = "topicQuelleB"
TOPICC    = "topicQuelleC"
TOPICOUT  = "twist"

TWquelle = 0
ticks_seit_quelle = 0
ticks_seit_input = 0
timeout_ticks = 10


#  rostopic pub -r 10 topicQuelleA geometry_msgs/Twist '[0.1, 0, 0]' '[0, 0, 0.3]'
#  rostopic pub -r 10 twistSource std_msgs/Byte 1
#  http://pharos.ece.utexas.edu/wiki/index.php/Writing_A_Simple_Node_that_Moves_the_iRobot_Create_Robot

def inputQuellWahl(data):
    global TWquelle
    TWquelle = data.data
    global ticks_seit_quelle
    global ticks_seit_input
    ticks_seit_quelle = 0
    if TWquelle == 1:
	# rospy.loginfo(" Quelle: %s", TOPICA)
	pass
    elif TWquelle == 2:
	# rospy.loginfo(" Quelle: %s", TOPICB)
	pass
    elif TWquelle == 3:
	# rospy.loginfo(" Quelle: %s", TOPICC)
	pass
    else:
	stop()
    if ticks_seit_input > timeout_ticks:
	stop()
    ticks_seit_input += 1



def inputQuelleA(data):
    #rospy.loginfo(rospy.get_caller_id() + " Daten von A ")
    global ticks_seit_quelle 
    global ticks_seit_input
    ticks_seit_input = 0
    if TWquelle == 1 and ticks_seit_quelle < timeout_ticks:
	    pub = rospy.Publisher(TOPICOUT, Twist, queue_size=3)
	    twist = Twist()
	    #twist.linear.x = data.linear.x   
	    #twist.angular.z = data.angular.z
	    twist = data
	    # rospy.loginfo("Moving forward/Back. %s", data.linear.x)
	    # rospy.loginfo("Turning the robot left/right. %s", data.angular.z);
	    pub.publish(twist)
	    #rospy.loginfo("Stopping! ???")
	    #twist = Twist()
	    #pub.publish(twist)
	    #rospy.loginfo("Zyklen seit Quellwahl: %s", ticks_seit_quelle)
	    ticks_seit_quelle += 1
    else:
	    stop()

def inputQuelleB(data):
    global ticks_seit_quelle 
    global ticks_seit_input
    ticks_seit_input = 0
    if TWquelle == 2 and ticks_seit_quelle < timeout_ticks:
	    #rospy.loginfo(rospy.get_caller_id() + " Daten von B ")
	    pub = rospy.Publisher(TOPICOUT, Twist, queue_size=3)
	    twist = Twist()
	    twist = data
	    pub.publish(twist)
	    #rospy.loginfo("Zyklen seit Quellwahl: %s", ticks_seit_quelle)
	    ticks_seit_quelle += 1
    else:
	    stop()

def inputQuelleC(data):
    global ticks_seit_quelle 
    global ticks_seit_input
    ticks_seit_input = 0
    if TWquelle == 3 and ticks_seit_quelle < timeout_ticks:
	    #rospy.loginfo(rospy.get_caller_id() + " Daten von C ")
	    pub = rospy.Publisher(TOPICOUT, Twist, queue_size=3)
	    twist = Twist()
	    twist = data
	    pub.publish(twist)
	    #rospy.loginfo("Zyklen seit Quellwahl: %s", ticks_seit_quelle)
	    ticks_seit_quelle += 1
    else:
	    stop()

def stop():
    #rospy.loginfo(" Stopping! ")
    pub = rospy.Publisher(TOPICOUT, Twist, queue_size=3)
    twist = Twist()
    pub.publish(twist)
    ticks_seit_input = 0
    ticks_seit_quelle = 0


def listener():
    rospy.init_node(PAKETNAME)
    stop()
    rospy.Subscriber(QUELLE, Byte, inputQuellWahl)
    rospy.Subscriber(TOPICA, Twist, inputQuelleA)
    rospy.Subscriber(TOPICB, Twist, inputQuelleB)
    rospy.Subscriber(TOPICC, Twist, inputQuelleC)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
if __name__ == '__main__':
    try:
	listener()
    except rospy.ROSInterruptException: pass
