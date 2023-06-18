;; Auto-generated. Do not edit!


(when (boundp 'billing::billmsg)
  (if (not (find-package "BILLING"))
    (make-package "BILLING"))
  (shadow 'billmsg (find-package "BILLING")))
(unless (find-package "BILLING::BILLMSG")
  (make-package "BILLING::BILLMSG"))

(in-package "ROS")
;;//! \htmlinclude billmsg.msg.html


(defclass billing::billmsg
  :super ros::object
  :slots (_bill_no _tstamp _qty _price _total ))

(defmethod billing::billmsg
  (:init
   (&key
    ((:bill_no __bill_no) 0)
    ((:tstamp __tstamp) "")
    ((:qty __qty) 0)
    ((:price __price) 0)
    ((:total __total) 0)
    )
   (send-super :init)
   (setq _bill_no (round __bill_no))
   (setq _tstamp (string __tstamp))
   (setq _qty (round __qty))
   (setq _price (round __price))
   (setq _total (round __total))
   self)
  (:bill_no
   (&optional __bill_no)
   (if __bill_no (setq _bill_no __bill_no)) _bill_no)
  (:tstamp
   (&optional __tstamp)
   (if __tstamp (setq _tstamp __tstamp)) _tstamp)
  (:qty
   (&optional __qty)
   (if __qty (setq _qty __qty)) _qty)
  (:price
   (&optional __price)
   (if __price (setq _price __price)) _price)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:serialization-length
   ()
   (+
    ;; int32 _bill_no
    4
    ;; string _tstamp
    4 (length _tstamp)
    ;; int32 _qty
    4
    ;; int32 _price
    4
    ;; int32 _total
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _bill_no
       (write-long _bill_no s)
     ;; string _tstamp
       (write-long (length _tstamp) s) (princ _tstamp s)
     ;; int32 _qty
       (write-long _qty s)
     ;; int32 _price
       (write-long _price s)
     ;; int32 _total
       (write-long _total s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _bill_no
     (setq _bill_no (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _tstamp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tstamp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _qty
     (setq _qty (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _price
     (setq _price (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _total
     (setq _total (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get billing::billmsg :md5sum-) "259d452ae106b356db3c6533589d546e")
(setf (get billing::billmsg :datatype-) "billing/billmsg")
(setf (get billing::billmsg :definition-)
      "int32 bill_no
string tstamp
int32 qty
int32 price
int32 total

")



(provide :billing/billmsg "259d452ae106b356db3c6533589d546e")


