;; Auto-generated. Do not edit!


(when (boundp 'co_coverage::SubteamOrder)
  (if (not (find-package "CO_COVERAGE"))
    (make-package "CO_COVERAGE"))
  (shadow 'SubteamOrder (find-package "CO_COVERAGE")))
(unless (find-package "CO_COVERAGE::SUBTEAMORDER")
  (make-package "CO_COVERAGE::SUBTEAMORDER"))

(in-package "ROS")
;;//! \htmlinclude SubteamOrder.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass co_coverage::SubteamOrder
  :super ros::object
  :slots (_header _order _num_robots ))

(defmethod co_coverage::SubteamOrder
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:order __order) (make-array 0 :initial-element 0 :element-type :integer))
    ((:num_robots __num_robots) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _order __order)
   (setq _num_robots (round __num_robots))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:num_robots
   (&optional __num_robots)
   (if __num_robots (setq _num_robots __num_robots)) _num_robots)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _order
    (* 4    (length _order)) 4
    ;; int32 _num_robots
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _order
     (write-long (length _order) s)
     (dotimes (i (length _order))
       (write-long (elt _order i) s)
       )
     ;; int32 _num_robots
       (write-long _num_robots s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _order
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _order (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _order i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _num_robots
     (setq _num_robots (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get co_coverage::SubteamOrder :md5sum-) "5287d70d5cae641d69251c73b5adda1e")
(setf (get co_coverage::SubteamOrder :datatype-) "co_coverage/SubteamOrder")
(setf (get co_coverage::SubteamOrder :definition-)
      "Header header
int32[] order
int32 num_robots

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



(provide :co_coverage/SubteamOrder "5287d70d5cae641d69251c73b5adda1e")


