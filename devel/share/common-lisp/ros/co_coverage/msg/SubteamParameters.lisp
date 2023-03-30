; Auto-generated. Do not edit!


(cl:in-package co_coverage-msg)


;//! \htmlinclude SubteamParameters.msg.html

(cl:defclass <SubteamParameters> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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

(cl:defclass SubteamParameters (<SubteamParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubteamParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubteamParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name co_coverage-msg:<SubteamParameters> is deprecated: use co_coverage-msg:SubteamParameters instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SubteamParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:header-val is deprecated.  Use co_coverage-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'inlid-val :lambda-list '(m))
(cl:defmethod inlid-val ((m <SubteamParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:inlid-val is deprecated.  Use co_coverage-msg:inlid instead.")
  (inlid m))

(cl:ensure-generic-function 'inlambda-val :lambda-list '(m))
(cl:defmethod inlambda-val ((m <SubteamParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:inlambda-val is deprecated.  Use co_coverage-msg:inlambda instead.")
  (inlambda m))

(cl:ensure-generic-function 'intau_delta-val :lambda-list '(m))
(cl:defmethod intau_delta-val ((m <SubteamParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:intau_delta-val is deprecated.  Use co_coverage-msg:intau_delta instead.")
  (intau_delta m))

(cl:ensure-generic-function 'inmu-val :lambda-list '(m))
(cl:defmethod inmu-val ((m <SubteamParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:inmu-val is deprecated.  Use co_coverage-msg:inmu instead.")
  (inmu m))

(cl:ensure-generic-function 'ingamma-val :lambda-list '(m))
(cl:defmethod ingamma-val ((m <SubteamParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:ingamma-val is deprecated.  Use co_coverage-msg:ingamma instead.")
  (ingamma m))

(cl:ensure-generic-function 'inangle_desired-val :lambda-list '(m))
(cl:defmethod inangle_desired-val ((m <SubteamParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader co_coverage-msg:inangle_desired-val is deprecated.  Use co_coverage-msg:inangle_desired instead.")
  (inangle_desired m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubteamParameters>) ostream)
  "Serializes a message object of type '<SubteamParameters>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'inlid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'inlambda))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'intau_delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'inmu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ingamma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'inangle_desired))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubteamParameters>) istream)
  "Deserializes a message object of type '<SubteamParameters>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inlid) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inlambda) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'intau_delta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inmu) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ingamma) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inangle_desired) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubteamParameters>)))
  "Returns string type for a message object of type '<SubteamParameters>"
  "co_coverage/SubteamParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubteamParameters)))
  "Returns string type for a message object of type 'SubteamParameters"
  "co_coverage/SubteamParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubteamParameters>)))
  "Returns md5sum for a message object of type '<SubteamParameters>"
  "3960caeb2a960469bd33c37683b0c1f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubteamParameters)))
  "Returns md5sum for a message object of type 'SubteamParameters"
  "3960caeb2a960469bd33c37683b0c1f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubteamParameters>)))
  "Returns full string definition for message of type '<SubteamParameters>"
  (cl:format cl:nil "Header header~%float64 inlid~%float64 inlambda~%float64 intau_delta~%float64 inmu~%float64 ingamma~%float64 inangle_desired~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubteamParameters)))
  "Returns full string definition for message of type 'SubteamParameters"
  (cl:format cl:nil "Header header~%float64 inlid~%float64 inlambda~%float64 intau_delta~%float64 inmu~%float64 ingamma~%float64 inangle_desired~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubteamParameters>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubteamParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'SubteamParameters
    (cl:cons ':header (header msg))
    (cl:cons ':inlid (inlid msg))
    (cl:cons ':inlambda (inlambda msg))
    (cl:cons ':intau_delta (intau_delta msg))
    (cl:cons ':inmu (inmu msg))
    (cl:cons ':ingamma (ingamma msg))
    (cl:cons ':inangle_desired (inangle_desired msg))
))
