#!/usr/bin/env python
import rospy
from billing.msg import billmsg
inventory_param = '/inventory'
income_param = '/income'
def callback(data):
    rospy.loginfo("Last Bill Data:")
    rospy.loginfo("Timestamp: %s", data.tstamp)
    rospy.loginfo("Bill Number: %s", data.bill_no)
    rospy.loginfo("Quantity: %s", data.qty)
    rospy.loginfo("Price: %s", data.price)
    rospy.loginfo("Total: %s", data.total)
    inventory = rospy.get_param(inventory_param, 100)
    income = rospy.get_param(income_param, 1400)
    rospy.loginfo("Current inventory: %f", inventory)
    rospy.loginfo("Current income: %f", income)

def subscriber():
    rospy.init_node('bill_subscriber', anonymous=True)
    rospy.Subscriber('bill_topic', billmsg, callback)
    rospy.spin()

if __name__ == '__main__':
    subscriber()
