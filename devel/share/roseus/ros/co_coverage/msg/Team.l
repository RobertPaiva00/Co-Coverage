;; Auto-generated. Do not edit!


(when (boundp 'co_coverage::Team)
  (if (not (find-package "CO_COVERAGE"))
    (make-package "CO_COVERAGE"))
  (shadow 'Team (find-package "CO_COVERAGE")))
(unless (find-package "CO_COVERAGE::TEAM")
  (make-package "CO_COVERAGE::TEAM"))

(in-package "ROS")
;;//! \htmlinclude Team.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass co_coverage::Team
  :super ros::object
  :slots (_header _team_id _team_num ))

(defmethod co_coverage::Team
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:team_id __team_id) (make-array 100 :initial-element 0 :element-type :integer))
    ((:team_num __team_num) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _team_id __team_id)
   (setq _team_num (round __team_num))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:team_id
   (&optional __team_id)
   (if __team_id (setq _team_id __team_id)) _team_id)
  (:team_num
   (&optional __team_num)
   (if __team_num (setq _team_num __team_num)) _team_num)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[100] _team_id
    (* 4    100)
    ;; uint32 _team_num
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[100] _team_id
     (dotimes (i 100)
       (write-long (elt _team_id i) s)
       )
     ;; uint32 _team_num
       (write-long _team_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[100] _team_id
   (dotimes (i (length _team_id))
     (setf (elt _team_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32 _team_num
     (setq _team_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get co_coverage::Team :md5sum-) "0de80fe56a3402e56a427da4690e4ede")
(setf (get co_coverage::Team :datatype-) "co_coverage/Team")
(setf (get co_coverage::Team :definition-)
      "Header header
uint32[100] team_id
uint32 team_num

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



(provide :co_coverage/Team "0de80fe56a3402e56a427da4690e4ede")


