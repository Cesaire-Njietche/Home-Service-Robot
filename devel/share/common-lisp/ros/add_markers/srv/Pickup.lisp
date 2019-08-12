; Auto-generated. Do not edit!


(cl:in-package add_markers-srv)


;//! \htmlinclude Pickup-request.msg.html

(cl:defclass <Pickup-request> (roslisp-msg-protocol:ros-message)
  ((goal_order
    :reader goal_order
    :initarg :goal_order
    :type cl:integer
    :initform 0))
)

(cl:defclass Pickup-request (<Pickup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pickup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pickup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name add_markers-srv:<Pickup-request> is deprecated: use add_markers-srv:Pickup-request instead.")))

(cl:ensure-generic-function 'goal_order-val :lambda-list '(m))
(cl:defmethod goal_order-val ((m <Pickup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:goal_order-val is deprecated.  Use add_markers-srv:goal_order instead.")
  (goal_order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pickup-request>) ostream)
  "Serializes a message object of type '<Pickup-request>"
  (cl:let* ((signed (cl:slot-value msg 'goal_order)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pickup-request>) istream)
  "Deserializes a message object of type '<Pickup-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_order) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pickup-request>)))
  "Returns string type for a service object of type '<Pickup-request>"
  "add_markers/PickupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pickup-request)))
  "Returns string type for a service object of type 'Pickup-request"
  "add_markers/PickupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pickup-request>)))
  "Returns md5sum for a message object of type '<Pickup-request>"
  "97fe84cd0a5806c89272852f77d29a02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pickup-request)))
  "Returns md5sum for a message object of type 'Pickup-request"
  "97fe84cd0a5806c89272852f77d29a02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pickup-request>)))
  "Returns full string definition for message of type '<Pickup-request>"
  (cl:format cl:nil "int64 goal_order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pickup-request)))
  "Returns full string definition for message of type 'Pickup-request"
  (cl:format cl:nil "int64 goal_order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pickup-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pickup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Pickup-request
    (cl:cons ':goal_order (goal_order msg))
))
;//! \htmlinclude Pickup-response.msg.html

(cl:defclass <Pickup-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform ""))
)

(cl:defclass Pickup-response (<Pickup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pickup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pickup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name add_markers-srv:<Pickup-response> is deprecated: use add_markers-srv:Pickup-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <Pickup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:feedback-val is deprecated.  Use add_markers-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pickup-response>) ostream)
  "Serializes a message object of type '<Pickup-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pickup-response>) istream)
  "Deserializes a message object of type '<Pickup-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pickup-response>)))
  "Returns string type for a service object of type '<Pickup-response>"
  "add_markers/PickupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pickup-response)))
  "Returns string type for a service object of type 'Pickup-response"
  "add_markers/PickupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pickup-response>)))
  "Returns md5sum for a message object of type '<Pickup-response>"
  "97fe84cd0a5806c89272852f77d29a02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pickup-response)))
  "Returns md5sum for a message object of type 'Pickup-response"
  "97fe84cd0a5806c89272852f77d29a02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pickup-response>)))
  "Returns full string definition for message of type '<Pickup-response>"
  (cl:format cl:nil "string feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pickup-response)))
  "Returns full string definition for message of type 'Pickup-response"
  (cl:format cl:nil "string feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pickup-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pickup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Pickup-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Pickup)))
  'Pickup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Pickup)))
  'Pickup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pickup)))
  "Returns string type for a service object of type '<Pickup>"
  "add_markers/Pickup")