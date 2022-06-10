; Auto-generated. Do not edit!


(cl:in-package conv-srv)


;//! \htmlinclude conv-request.msg.html

(cl:defclass <conv-request> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:integer
    :initform 0)
   (srcmatrix_A_rownum
    :reader srcmatrix_A_rownum
    :initarg :srcmatrix_A_rownum
    :type cl:integer
    :initform 0)
   (srcmatrix_A_colnum
    :reader srcmatrix_A_colnum
    :initarg :srcmatrix_A_colnum
    :type cl:integer
    :initform 0)
   (srcmatrix_A
    :reader srcmatrix_A
    :initarg :srcmatrix_A
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (srcmatrix_B_rownum
    :reader srcmatrix_B_rownum
    :initarg :srcmatrix_B_rownum
    :type cl:integer
    :initform 0)
   (srcmatrix_B_colnum
    :reader srcmatrix_B_colnum
    :initarg :srcmatrix_B_colnum
    :type cl:integer
    :initform 0)
   (srcmatrix_B
    :reader srcmatrix_B
    :initarg :srcmatrix_B
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass conv-request (<conv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <conv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'conv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conv-srv:<conv-request> is deprecated: use conv-srv:conv-request instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <conv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conv-srv:version-val is deprecated.  Use conv-srv:version instead.")
  (version m))

(cl:ensure-generic-function 'srcmatrix_A_rownum-val :lambda-list '(m))
(cl:defmethod srcmatrix_A_rownum-val ((m <conv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conv-srv:srcmatrix_A_rownum-val is deprecated.  Use conv-srv:srcmatrix_A_rownum instead.")
  (srcmatrix_A_rownum m))

(cl:ensure-generic-function 'srcmatrix_A_colnum-val :lambda-list '(m))
(cl:defmethod srcmatrix_A_colnum-val ((m <conv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conv-srv:srcmatrix_A_colnum-val is deprecated.  Use conv-srv:srcmatrix_A_colnum instead.")
  (srcmatrix_A_colnum m))

(cl:ensure-generic-function 'srcmatrix_A-val :lambda-list '(m))
(cl:defmethod srcmatrix_A-val ((m <conv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conv-srv:srcmatrix_A-val is deprecated.  Use conv-srv:srcmatrix_A instead.")
  (srcmatrix_A m))

(cl:ensure-generic-function 'srcmatrix_B_rownum-val :lambda-list '(m))
(cl:defmethod srcmatrix_B_rownum-val ((m <conv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conv-srv:srcmatrix_B_rownum-val is deprecated.  Use conv-srv:srcmatrix_B_rownum instead.")
  (srcmatrix_B_rownum m))

(cl:ensure-generic-function 'srcmatrix_B_colnum-val :lambda-list '(m))
(cl:defmethod srcmatrix_B_colnum-val ((m <conv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conv-srv:srcmatrix_B_colnum-val is deprecated.  Use conv-srv:srcmatrix_B_colnum instead.")
  (srcmatrix_B_colnum m))

(cl:ensure-generic-function 'srcmatrix_B-val :lambda-list '(m))
(cl:defmethod srcmatrix_B-val ((m <conv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conv-srv:srcmatrix_B-val is deprecated.  Use conv-srv:srcmatrix_B instead.")
  (srcmatrix_B m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <conv-request>) ostream)
  "Serializes a message object of type '<conv-request>"
  (cl:let* ((signed (cl:slot-value msg 'version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'srcmatrix_A_rownum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'srcmatrix_A_colnum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'srcmatrix_A))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'srcmatrix_A))
  (cl:let* ((signed (cl:slot-value msg 'srcmatrix_B_rownum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'srcmatrix_B_colnum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'srcmatrix_B))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'srcmatrix_B))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <conv-request>) istream)
  "Deserializes a message object of type '<conv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'srcmatrix_A_rownum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'srcmatrix_A_colnum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'srcmatrix_A) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'srcmatrix_A)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'srcmatrix_B_rownum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'srcmatrix_B_colnum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'srcmatrix_B) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'srcmatrix_B)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<conv-request>)))
  "Returns string type for a service object of type '<conv-request>"
  "conv/convRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'conv-request)))
  "Returns string type for a service object of type 'conv-request"
  "conv/convRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<conv-request>)))
  "Returns md5sum for a message object of type '<conv-request>"
  "fd95d1cd8607c017d163c5f38defaa91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'conv-request)))
  "Returns md5sum for a message object of type 'conv-request"
  "fd95d1cd8607c017d163c5f38defaa91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<conv-request>)))
  "Returns full string definition for message of type '<conv-request>"
  (cl:format cl:nil "int32 version~%int32 srcmatrix_A_rownum~%int32 srcmatrix_A_colnum~%int8[] srcmatrix_A~%int32 srcmatrix_B_rownum~%int32 srcmatrix_B_colnum~%uint8[] srcmatrix_B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'conv-request)))
  "Returns full string definition for message of type 'conv-request"
  (cl:format cl:nil "int32 version~%int32 srcmatrix_A_rownum~%int32 srcmatrix_A_colnum~%int8[] srcmatrix_A~%int32 srcmatrix_B_rownum~%int32 srcmatrix_B_colnum~%uint8[] srcmatrix_B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <conv-request>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'srcmatrix_A) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'srcmatrix_B) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <conv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'conv-request
    (cl:cons ':version (version msg))
    (cl:cons ':srcmatrix_A_rownum (srcmatrix_A_rownum msg))
    (cl:cons ':srcmatrix_A_colnum (srcmatrix_A_colnum msg))
    (cl:cons ':srcmatrix_A (srcmatrix_A msg))
    (cl:cons ':srcmatrix_B_rownum (srcmatrix_B_rownum msg))
    (cl:cons ':srcmatrix_B_colnum (srcmatrix_B_colnum msg))
    (cl:cons ':srcmatrix_B (srcmatrix_B msg))
))
;//! \htmlinclude conv-response.msg.html

(cl:defclass <conv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass conv-response (<conv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <conv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'conv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name conv-srv:<conv-response> is deprecated: use conv-srv:conv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <conv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader conv-srv:result-val is deprecated.  Use conv-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <conv-response>) ostream)
  "Serializes a message object of type '<conv-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <conv-response>) istream)
  "Deserializes a message object of type '<conv-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<conv-response>)))
  "Returns string type for a service object of type '<conv-response>"
  "conv/convResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'conv-response)))
  "Returns string type for a service object of type 'conv-response"
  "conv/convResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<conv-response>)))
  "Returns md5sum for a message object of type '<conv-response>"
  "fd95d1cd8607c017d163c5f38defaa91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'conv-response)))
  "Returns md5sum for a message object of type 'conv-response"
  "fd95d1cd8607c017d163c5f38defaa91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<conv-response>)))
  "Returns full string definition for message of type '<conv-response>"
  (cl:format cl:nil "uint8[] result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'conv-response)))
  "Returns full string definition for message of type 'conv-response"
  (cl:format cl:nil "uint8[] result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <conv-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <conv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'conv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'conv)))
  'conv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'conv)))
  'conv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'conv)))
  "Returns string type for a service object of type '<conv>"
  "conv/conv")