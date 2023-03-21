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
  :slots (_header _status _leader ))

(defmethod co_coverage::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:leader __leader) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   (setq _leader __leader)
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
  (:leader
   (&optional (__leader :null))
   (if (not (eq __leader :null)) (setq _leader __leader)) _leader)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _status
    2
    ;; bool _leader
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _status
       (write-word _status s)
     ;; bool _leader
       (if _leader (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _leader
     (setq _leader (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get co_coverage::Status :md5sum-) "4e32b5b75d2be0075af4fc7e7f8aa211")
(setf (get co_coverage::Status :datatype-) "co_coverage/Status")
(setf (get co_coverage::Status :definition-)
      "Header header
uint16 status
bool leader

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



(provide :co_coverage/Status "4e32b5b75d2be0075af4fc7e7f8aa211")


