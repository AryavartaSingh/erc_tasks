#!/usr/bin/env python
import rospy 
from billing.msg import billmsg
from std_msgs.msg import Header
import random
from datetime import datetime
import time


def billdata():
    rospy.init_node('bill_pub')
    pub = rospy.Publisher('bill_topic', billmsg, queue_size=10)
    rate = rospy.Rate(1)
    #currenttime = rospy.Time.now()
    #seconds = current_time.secs
    while not rospy.is_shutdown():
        user_in = int(input("Enter quantity: "))
        try: 
            bill_in = billmsg()
            header=Header()
            header.stamp = rospy.Time.now()
            human_readable_time = datetime.fromtimestamp(header.stamp.to_sec()).strftime("%Y-%m-%d %H:%M:%S")
            #header.frame_id = human_readable_time
            bill_in.tstamp = human_readable_time
            bill_in.bill_no = int(random.randint(1, 9999) + time.time())
            bill_in.qty = user_in
            bill_in.price = 100
            bill_in.total =  bill_in.price*bill_in.qty
            pub.publish(bill_in)
            rospy.loginfo(bill_in)
        except ValueError:
            rospy.logerr("Invalid input")
        rate.sleep()


if __name__ == '__main__':
    try:
        billdata()
    except rospy.ROSInterruptException:
        pass