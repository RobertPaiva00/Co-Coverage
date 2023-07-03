; Auto-generated. Do not edit!


(cl:in-package co_coverage-msg)


;//! \htmlinclude Team.msg.html

(cl:defclass <Team> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (team_id
    :reader team_id
    :initarg :team_id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (team_num
    :reader team_num
    :initarg :team_num
    :type cl:integer
    :initform 0))
)

(cl:defclass Team (<Team>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Team>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Team)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name co_coverage-msg:<Team> is deprecated: use co_coverage-msg:Team instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Team>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:header-val is deprecated.  Use co_coverage-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'team_id-val :lambda-list '(m))
(cl:defmethod team_id-val ((m <Team>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:team_id-val is deprecated.  Use co_coverage-msg:team_id instead.")
  (team_id m))

(cl:ensure-generic-function 'team_num-val :lambda-list '(m))
(cl:defmethod team_num-val ((m <Team>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:team_num-val is deprecated.  Use co_coverage-msg:team_num instead.")
  (team_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Team>) ostream)
  "Serializes a message object of type '<Team>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'team_id))))
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
   (cl:slot-value msg 'team_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'team_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'team_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'team_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'team_num)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Team>) istream)
  "Deserializes a message object of type '<Team>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'team_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'team_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'team_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'team_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'team_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'team_num)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Team>)))
  "Returns string type for a message object of type '<Team>"
  "co_coverage/Team")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Team)))
  "Returns string type for a message object of type 'Team"
  "co_coverage/Team")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Team>)))
  "Returns md5sum for a message object of type '<Team>"
  "08b1997128770891cd099f21d0aa94e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Team)))
  "Returns md5sum for a message object of type 'Team"
  "08b1997128770891cd099f21d0aa94e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Team>)))
  "Returns full string definition for message of type '<Team>"
  (cl:format cl:nil "Header header~%int32[] team_id~%uint32 team_num~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Team)))
  "Returns full string definition for message of type 'Team"
  (cl:format cl:nil "Header header~%int32[] team_id~%uint32 team_num~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Team>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'team_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Team>))
  "Converts a ROS message object to a list"
  (cl:list 'Team
    (cl:cons ':header (header msg))
    (cl:cons ':team_id (team_id msg))
    (cl:cons ':team_num (team_num msg))
))
