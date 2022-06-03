; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude Event-request.msg.html

(cl:defclass <Event-request> (roslisp-msg-protocol:ros-message)
  ((content
    :reader content
    :initarg :content
    :type cl:string
    :initform ""))
)

(cl:defclass Event-request (<Event-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Event-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Event-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Event-request> is deprecated: use beginner_tutorials-srv:Event-request instead.")))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <Event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:content-val is deprecated.  Use beginner_tutorials-srv:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Event-request>) ostream)
  "Serializes a message object of type '<Event-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Event-request>) istream)
  "Deserializes a message object of type '<Event-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Event-request>)))
  "Returns string type for a service object of type '<Event-request>"
  "beginner_tutorials/EventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Event-request)))
  "Returns string type for a service object of type 'Event-request"
  "beginner_tutorials/EventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Event-request>)))
  "Returns md5sum for a message object of type '<Event-request>"
  "868b07f2540b8f55d0a16c4ccc0407bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Event-request)))
  "Returns md5sum for a message object of type 'Event-request"
  "868b07f2540b8f55d0a16c4ccc0407bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Event-request>)))
  "Returns full string definition for message of type '<Event-request>"
  (cl:format cl:nil "string content~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Event-request)))
  "Returns full string definition for message of type 'Event-request"
  (cl:format cl:nil "string content~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Event-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Event-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Event-request
    (cl:cons ':content (content msg))
))
;//! \htmlinclude Event-response.msg.html

(cl:defclass <Event-response> (roslisp-msg-protocol:ros-message)
  ((content
    :reader content
    :initarg :content
    :type cl:string
    :initform ""))
)

(cl:defclass Event-response (<Event-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Event-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Event-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<Event-response> is deprecated: use beginner_tutorials-srv:Event-response instead.")))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <Event-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:content-val is deprecated.  Use beginner_tutorials-srv:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Event-response>) ostream)
  "Serializes a message object of type '<Event-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Event-response>) istream)
  "Deserializes a message object of type '<Event-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Event-response>)))
  "Returns string type for a service object of type '<Event-response>"
  "beginner_tutorials/EventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Event-response)))
  "Returns string type for a service object of type 'Event-response"
  "beginner_tutorials/EventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Event-response>)))
  "Returns md5sum for a message object of type '<Event-response>"
  "868b07f2540b8f55d0a16c4ccc0407bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Event-response)))
  "Returns md5sum for a message object of type 'Event-response"
  "868b07f2540b8f55d0a16c4ccc0407bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Event-response>)))
  "Returns full string definition for message of type '<Event-response>"
  (cl:format cl:nil "string content~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Event-response)))
  "Returns full string definition for message of type 'Event-response"
  (cl:format cl:nil "string content~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Event-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Event-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Event-response
    (cl:cons ':content (content msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Event)))
  'Event-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Event)))
  'Event-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Event)))
  "Returns string type for a service object of type '<Event>"
  "beginner_tutorials/Event")