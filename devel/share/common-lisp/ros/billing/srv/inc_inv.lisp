; Auto-generated. Do not edit!


(cl:in-package billing-srv)


;//! \htmlinclude inc_inv-request.msg.html

(cl:defclass <inc_inv-request> (roslisp-msg-protocol:ros-message)
  ((qty
    :reader qty
    :initarg :qty
    :type cl:integer
    :initform 0)
   (total
    :reader total
    :initarg :total
    :type cl:integer
    :initform 0))
)

(cl:defclass inc_inv-request (<inc_inv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inc_inv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inc_inv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billing-srv:<inc_inv-request> is deprecated: use billing-srv:inc_inv-request instead.")))

(cl:ensure-generic-function 'qty-val :lambda-list '(m))
(cl:defmethod qty-val ((m <inc_inv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billing-srv:qty-val is deprecated.  Use billing-srv:qty instead.")
  (qty m))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <inc_inv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billing-srv:total-val is deprecated.  Use billing-srv:total instead.")
  (total m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inc_inv-request>) ostream)
  "Serializes a message object of type '<inc_inv-request>"
  (cl:let* ((signed (cl:slot-value msg 'qty)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inc_inv-request>) istream)
  "Deserializes a message object of type '<inc_inv-request>"
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
      (cl:setf (cl:slot-value msg 'total) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inc_inv-request>)))
  "Returns string type for a service object of type '<inc_inv-request>"
  "billing/inc_invRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inc_inv-request)))
  "Returns string type for a service object of type 'inc_inv-request"
  "billing/inc_invRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inc_inv-request>)))
  "Returns md5sum for a message object of type '<inc_inv-request>"
  "31f8c6a2c4eb0a57e12824b70548dc9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inc_inv-request)))
  "Returns md5sum for a message object of type 'inc_inv-request"
  "31f8c6a2c4eb0a57e12824b70548dc9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inc_inv-request>)))
  "Returns full string definition for message of type '<inc_inv-request>"
  (cl:format cl:nil "int32 qty~%int32 total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inc_inv-request)))
  "Returns full string definition for message of type 'inc_inv-request"
  (cl:format cl:nil "int32 qty~%int32 total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inc_inv-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inc_inv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'inc_inv-request
    (cl:cons ':qty (qty msg))
    (cl:cons ':total (total msg))
))
;//! \htmlinclude inc_inv-response.msg.html

(cl:defclass <inc_inv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:string
    :initform ""))
)

(cl:defclass inc_inv-response (<inc_inv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inc_inv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inc_inv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billing-srv:<inc_inv-response> is deprecated: use billing-srv:inc_inv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <inc_inv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billing-srv:success-val is deprecated.  Use billing-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inc_inv-response>) ostream)
  "Serializes a message object of type '<inc_inv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'success))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'success))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inc_inv-response>) istream)
  "Deserializes a message object of type '<inc_inv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'success) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inc_inv-response>)))
  "Returns string type for a service object of type '<inc_inv-response>"
  "billing/inc_invResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inc_inv-response)))
  "Returns string type for a service object of type 'inc_inv-response"
  "billing/inc_invResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inc_inv-response>)))
  "Returns md5sum for a message object of type '<inc_inv-response>"
  "31f8c6a2c4eb0a57e12824b70548dc9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inc_inv-response)))
  "Returns md5sum for a message object of type 'inc_inv-response"
  "31f8c6a2c4eb0a57e12824b70548dc9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inc_inv-response>)))
  "Returns full string definition for message of type '<inc_inv-response>"
  (cl:format cl:nil "string success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inc_inv-response)))
  "Returns full string definition for message of type 'inc_inv-response"
  (cl:format cl:nil "string success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inc_inv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'success))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inc_inv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'inc_inv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'inc_inv)))
  'inc_inv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'inc_inv)))
  'inc_inv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inc_inv)))
  "Returns string type for a service object of type '<inc_inv>"
  "billing/inc_inv")