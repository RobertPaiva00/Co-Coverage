;; Auto-generated. Do not edit!


(when (boundp 'co_coverage::Status)
  (if (not (find-package "CO_COVERAGE"))
    (make-package "CO_COVERAGE"))
  (shadow 'Status (find-package "CO_COVERAGE")))
(unless (find-package "CO_COVERAGE::STATUS")
  (make-package "CO_COVERAGE::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass co_coverage::Status
  :super ros::object
  :slots (_header _status _subteam _following _leading ))

(defmethod co_coverage::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:subteam __subteam) 0)
    ((:following __following) 0)
    ((:leading __leading) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   (setq _subteam (round __subteam))
   (setq _following (round __following))
   (setq _leading (round __leading))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:subteam
   (&optional __subteam)
   (if __subteam (setq _subteam __subteam)) _subteam)
  (:following
   (&optional __following)
   (if __following (setq _following __following)) _following)
  (:leading
   (&optional __leading)
   (if __leading (setq _leading __leading)) _leading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _status
    4
    ;; uint32 _subteam
    4
    ;; uint32 _following
    4
    ;; uint32 _leading
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _status
       (write-long _status s)
     ;; uint32 _subteam
       (write-long _subteam s)
     ;; uint32 _following
       (write-long _following s)
     ;; uint32 _leading
       (write-long _leading s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _subteam
     (setq _subteam (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _following
     (setq _following (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _leading
     (setq _leading (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get co_coverage::Status :md5sum-) "73b0293d22aae890e0abda96fec4ba83")
(setf (get co_coverage::Status :datatype-) "co_coverage/Status")
(setf (get co_coverage::Status :definition-)
      "Header header
uint32 status
uint32 subteam
uint32 following
uint32 leading

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :co_coverage/Status "73b0293d22aae890e0abda96fec4ba83")


