;; Auto-generated. Do not edit!


(when (boundp 'billing::inc_inv)
  (if (not (find-package "BILLING"))
    (make-package "BILLING"))
  (shadow 'inc_inv (find-package "BILLING")))
(unless (find-package "BILLING::INC_INV")
  (make-package "BILLING::INC_INV"))
(unless (find-package "BILLING::INC_INVREQUEST")
  (make-package "BILLING::INC_INVREQUEST"))
(unless (find-package "BILLING::INC_INVRESPONSE")
  (make-package "BILLING::INC_INVRESPONSE"))

(in-package "ROS")





(defclass billing::inc_invRequest
  :super ros::object
  :slots (_qty _total ))

(defmethod billing::inc_invRequest
  (:init
   (&key
    ((:qty __qty) 0)
    ((:total __total) 0)
    )
   (send-super :init)
   (setq _qty (round __qty))
   (setq _total (round __total))
   self)
  (:qty
   (&optional __qty)
   (if __qty (setq _qty __qty)) _qty)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:serialization-length
   ()
   (+
    ;; int32 _qty
    4
    ;; int32 _total
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _qty
       (write-long _qty s)
     ;; int32 _total
       (write-long _total s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _qty
     (setq _qty (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _total
     (setq _total (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass billing::inc_invResponse
  :super ros::object
  :slots (_success ))

(defmethod billing::inc_invResponse
  (:init
   (&key
    ((:success __success) "")
    )
   (send-super :init)
   (setq _success (string __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _success
    4 (length _success)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _success
       (write-long (length _success) s) (princ _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _success
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _success (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass billing::inc_inv
  :super ros::object
  :slots ())

(setf (get billing::inc_inv :md5sum-) "31f8c6a2c4eb0a57e12824b70548dc9d")
(setf (get billing::inc_inv :datatype-) "billing/inc_inv")
(setf (get billing::inc_inv :request) billing::inc_invRequest)
(setf (get billing::inc_inv :response) billing::inc_invResponse)

(defmethod billing::inc_invRequest
  (:response () (instance billing::inc_invResponse :init)))

(setf (get billing::inc_invRequest :md5sum-) "31f8c6a2c4eb0a57e12824b70548dc9d")
(setf (get billing::inc_invRequest :datatype-) "billing/inc_invRequest")
(setf (get billing::inc_invRequest :definition-)
      "int32 qty
int32 total
---
string success

")

(setf (get billing::inc_invResponse :md5sum-) "31f8c6a2c4eb0a57e12824b70548dc9d")
(setf (get billing::inc_invResponse :datatype-) "billing/inc_invResponse")
(setf (get billing::inc_invResponse :definition-)
      "int32 qty
int32 total
---
string success

")



(provide :billing/inc_inv "31f8c6a2c4eb0a57e12824b70548dc9d")


