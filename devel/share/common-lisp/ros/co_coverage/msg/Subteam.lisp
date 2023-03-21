; Auto-generated. Do not edit!


(cl:in-package co_coverage-msg)


;//! \htmlinclude Subteam.msg.html

(cl:defclass <Subteam> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (leader
    :reader leader
    :initarg :leader
    :type cl:fixnum
    :initform 0)
   (tail
    :reader tail
    :initarg :tail
    :type cl:fixnum
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

(cl:ensure-generic-function 'leader-val :lambda-list '(m))
(cl:defmethod leader-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:leader-val is deprecated.  Use co_coverage-msg:leader instead.")
  (leader m))

(cl:ensure-generic-function 'tail-val :lambda-list '(m))
(cl:defmethod tail-val ((m <Subteam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:tail-val is deprecated.  Use co_coverage-msg:tail instead.")
  (tail m))

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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leader)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'leader)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tail)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tail)) ostream)
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leader)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'leader)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tail)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tail)) (cl:read-byte istream))
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
  "df19d51cae770470dc9d16a79a7e7659")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Subteam)))
  "Returns md5sum for a message object of type 'Subteam"
  "df19d51cae770470dc9d16a79a7e7659")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Subteam>)))
  "Returns full string definition for message of type '<Subteam>"
  (cl:format cl:nil "Header header~%uint16 leader~%uint16 tail~%float32 inlid~%float32 inlambda~%float32 intau_delta~%float32 inmu~%float32 ingamma~%float32 inangle_desired~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Subteam)))
  "Returns full string definition for message of type 'Subteam"
  (cl:format cl:nil "Header header~%uint16 leader~%uint16 tail~%float32 inlid~%float32 inlambda~%float32 intau_delta~%float32 inmu~%float32 ingamma~%float32 inangle_desired~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Subteam>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
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
    (cl:cons ':leader (leader msg))
    (cl:cons ':tail (tail msg))
    (cl:cons ':inlid (inlid msg))
    (cl:cons ':inlambda (inlambda msg))
    (cl:cons ':intau_delta (intau_delta msg))
    (cl:cons ':inmu (inmu msg))
    (cl:cons ':ingamma (ingamma msg))
    (cl:cons ':inangle_desired (inangle_desired msg))
))
