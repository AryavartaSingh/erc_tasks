; Auto-generated. Do not edit!


(cl:in-package billing-msg)


;//! \htmlinclude billmsg.msg.html

(cl:defclass <billmsg> (roslisp-msg-protocol:ros-message)
  ((bill_no
    :reader bill_no
    :initarg :bill_no
    :type cl:integer
    :initform 0)
   (tstamp
    :reader tstamp
    :initarg :tstamp
    :type cl:string
    :initform "")
   (qty
    :reader qty
    :initarg :qty
    :type cl:integer
    :initform 0)
   (price
    :reader price
    :initarg :price
    :type cl:integer
    :initform 0)
   (total
    :reader total
    :initarg :total
    :type cl:integer
    :initform 0))
)

(cl:defclass billmsg (<billmsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <billmsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'billmsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billing-msg:<billmsg> is deprecated: use billing-msg:billmsg instead.")))

(cl:ensure-generic-function 'bill_no-val :lambda-list '(m))
(cl:defmethod bill_no-val ((m <billmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billing-msg:bill_no-val is deprecated.  Use billing-msg:bill_no instead.")
  (bill_no m))

(cl:ensure-generic-function 'tstamp-val :lambda-list '(m))
(cl:defmethod tstamp-val ((m <billmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billing-msg:tstamp-val is deprecated.  Use billing-msg:tstamp instead.")
  (tstamp m))

(cl:ensure-generic-function 'qty-val :lambda-list '(m))
(cl:defmethod qty-val ((m <billmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billing-msg:qty-val is deprecated.  Use billing-msg:qty instead.")
  (qty m))

(cl:ensure-generic-function 'price-val :lambda-list '(m))
(cl:defmethod price-val ((m <billmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billing-msg:price-val is deprecated.  Use billing-msg:price instead.")
  (price m))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <billmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billing-msg:total-val is deprecated.  Use billing-msg:total instead.")
  (total m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <billmsg>) ostream)
  "Serializes a message object of type '<billmsg>"
  (cl:let* ((signed (cl:slot-value msg 'bill_no)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tstamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tstamp))
  (cl:let* ((signed (cl:slot-value msg 'qty)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'price)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'total)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <billmsg>) istream)
  "Deserializes a message object of type '<billmsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bill_no) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tstamp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tstamp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'qty) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'price) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<billmsg>)))
  "Returns string type for a message object of type '<billmsg>"
  "billing/billmsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'billmsg)))
  "Returns string type for a message object of type 'billmsg"
  "billing/billmsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<billmsg>)))
  "Returns md5sum for a message object of type '<billmsg>"
  "259d452ae106b356db3c6533589d546e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'billmsg)))
  "Returns md5sum for a message object of type 'billmsg"
  "259d452ae106b356db3c6533589d546e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<billmsg>)))
  "Returns full string definition for message of type '<billmsg>"
  (cl:format cl:nil "int32 bill_no~%string tstamp~%int32 qty~%int32 price~%int32 total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'billmsg)))
  "Returns full string definition for message of type 'billmsg"
  (cl:format cl:nil "int32 bill_no~%string tstamp~%int32 qty~%int32 price~%int32 total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <billmsg>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'tstamp))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <billmsg>))
  "Converts a ROS message object to a list"
  (cl:list 'billmsg
    (cl:cons ':bill_no (bill_no msg))
    (cl:cons ':tstamp (tstamp msg))
    (cl:cons ':qty (qty msg))
    (cl:cons ':price (price msg))
    (cl:cons ':total (total msg))
))
