#!/usr/bin/env python
import rospy
from billing.msg import billmsg
from std_msgs.msg import String
from billing.srv import inc_inv
#from billing.srv import inc_invRequest
#from billing.srv import inc_invResponse
inventory_param = '/inventory'
income_param = '/income'

inventory = 100
income = 1400

def callback(data):
    qty=data.qty
    total=data.total
    rospy.wait_for_service('update_params')
    try:
        update_params = rospy.ServiceProxy('update_params', inc_inv)
        status = update_params(qty, total)
        if status.success:
            rospy.loginfo("successfully updated")
        else:
            rospy.loginfo("failed")
    except rospy.ServiceException as e:
        print("Service call failed: %s", e)

def updater(request):
    inventory = rospy.get_param(inventory_param, 100)
    income = rospy.get_param(income_param, 1400)
    bill_inv = request.qty
    bill_inc = request.total
    rospy.set_param(inventory_param, inventory-bill_inv)
    rospy.set_param(income_param, income+bill_inc)
    return 'succefully updated'
def subscriber():
    rospy.init_node('bill_subscriber', anonymous=True)
    rospy.Subscriber('bill_topic', billmsg, callback)
    rospy.Service('update_params', inc_inv, updater)
    rospy.spin()

if __name__ == '__main__':
    try: 
        subscriber()
    except rospy.ROSInterruptException:
        pass
