; Auto-generated. Do not edit!


(cl:in-package co_coverage-msg)


;//! \htmlinclude Subteam.msg.html

(cl:defclass <Subteam> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (order
    :reader order
    :initarg :order
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (num_robots
    :reader num_robots
    :initarg :num_robots
    :type cl:integer
    :initform 0)
   (inlid
    :reader inlid
    :initarg :inlid
    :type cl:float
    :initform 0.0)
   (inlambda
    :reader inlambda
    :initarg :inlambda
    :type cl:float
    :initform 0.0)
   (intau_delta
    :reader intau_delta
    :initarg :intau_delta
    :type cl:float
    :initform 0.0)
   (inmu
    :reader inmu
    :initarg :inmu
    :type cl:float
    :initform 0.0)
   (ingamma
    :reader ingamma
    :initarg :ingamma
    :type cl:float
    :initform 0.0)
   (inangle_desired
    :reader inangle_desired
    :initarg :inangle_desired
    :type cl:float
    :initform 0.0))
)

(cl:defclass Subteam (<Subteam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Subteam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Subteam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name co_coverage-msg:<Subteam> is deprecated: use co_coverage-msg:Subteam instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:header-val is deprecated.  Use co_coverage-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:order-val is deprecated.  Use co_coverage-msg:order instead.")
  (order m))

(cl:ensure-generic-function 'num_robots-val :lambda-list '(m))
(cl:defmethod num_robots-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:num_robots-val is deprecated.  Use co_coverage-msg:num_robots instead.")
  (num_robots m))

(cl:ensure-generic-function 'inlid-val :lambda-list '(m))
(cl:defmethod inlid-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:inlid-val is deprecated.  Use co_coverage-msg:inlid instead.")
  (inlid m))

(cl:ensure-generic-function 'inlambda-val :lambda-list '(m))
(cl:defmethod inlambda-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:inlambda-val is deprecated.  Use co_coverage-msg:inlambda instead.")
  (inlambda m))

(cl:ensure-generic-function 'intau_delta-val :lambda-list '(m))
(cl:defmethod intau_delta-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:intau_delta-val is deprecated.  Use co_coverage-msg:intau_delta instead.")
  (intau_delta m))

(cl:ensure-generic-function 'inmu-val :lambda-list '(m))
(cl:defmethod inmu-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:inmu-val is deprecated.  Use co_coverage-msg:inmu instead.")
  (inmu m))

(cl:ensure-generic-function 'ingamma-val :lambda-list '(m))
(cl:defmethod ingamma-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:ingamma-val is deprecated.  Use co_coverage-msg:ingamma instead.")
  (ingamma m))

(cl:ensure-generic-function 'inangle_desired-val :lambda-list '(m))
(cl:defmethod inangle_desired-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:inangle_desired-val is deprecated.  Use co_coverage-msg:inangle_desired instead.")
  (inangle_desired m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Subteam>) ostream)
  "Serializes a message object of type '<Subteam>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'order))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'order))
  (cl:let* ((signed (cl:slot-value msg 'num_robots)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inlid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inlambda))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'intau_delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inmu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ingamma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inangle_desired))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Subteam>) istream)
  "Deserializes a message object of type '<Subteam>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'order) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'order)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_robots) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inlid) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inlambda) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'intau_delta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inmu) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ingamma) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inangle_desired) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Subteam>)))
  "Returns string type for a message object of type '<Subteam>"
  "co_coverage/Subteam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Subteam)))
  "Returns string type for a message object of type 'Subteam"
  "co_coverage/Subteam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Subteam>)))
  "Returns md5sum for a message object of type '<Subteam>"
  "01d15b4fb8b52d79a988fadb9fea105f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Subteam)))
  "Returns md5sum for a message object of type 'Subteam"
  "01d15b4fb8b52d79a988fadb9fea105f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Subteam>)))
  "Returns full string definition for message of type '<Subteam>"
  (cl:format cl:nil "Header header~%int32[] order~%int32 num_robots~%float32 inlid~%float32 inlambda~%float32 intau_delta~%float32 inmu~%float32 ingamma~%float32 inangle_desired~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Subteam)))
  "Returns full string definition for message of type 'Subteam"
  (cl:format cl:nil "Header header~%int32[] order~%int32 num_robots~%float32 inlid~%float32 inlambda~%float32 intau_delta~%float32 inmu~%float32 ingamma~%float32 inangle_desired~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Subteam>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'order) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Subteam>))
  "Converts a ROS message object to a list"
  (cl:list 'Subteam
    (cl:cons ':header (header msg))
    (cl:cons ':order (order msg))
    (cl:cons ':num_robots (num_robots msg))
    (cl:cons ':inlid (inlid msg))
    (cl:cons ':inlambda (inlambda msg))
    (cl:cons ':intau_delta (intau_delta msg))
    (cl:cons ':inmu (inmu msg))
    (cl:cons ':ingamma (ingamma msg))
    (cl:cons ':inangle_desired (inangle_desired msg))
))
