;; Auto-generated. Do not edit!


(when (boundp 'co_coverage::Subteam)
  (if (not (find-package "CO_COVERAGE"))
    (make-package "CO_COVERAGE"))
  (shadow 'Subteam (find-package "CO_COVERAGE")))
(unless (find-package "CO_COVERAGE::SUBTEAM")
  (make-package "CO_COVERAGE::SUBTEAM"))

(in-package "ROS")
;;//! \htmlinclude Subteam.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass co_coverage::Subteam
  :super ros::object
  :slots (_header _order _num_robots _inlid _inlambda _intau_delta _inmu _ingamma _inangle_desired ))

(defmethod co_coverage::Subteam
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:order __order) (make-array 0 :initial-element 0 :element-type :integer))
    ((:num_robots __num_robots) 0)
    ((:inlid __inlid) 0.0)
    ((:inlambda __inlambda) 0.0)
    ((:intau_delta __intau_delta) 0.0)
    ((:inmu __inmu) 0.0)
    ((:ingamma __ingamma) 0.0)
    ((:inangle_desired __inangle_desired) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _order __order)
   (setq _num_robots (round __num_robots))
   (setq _inlid (float __inlid))
   (setq _inlambda (float __inlambda))
   (setq _intau_delta (float __intau_delta))
   (setq _inmu (float __inmu))
   (setq _ingamma (float __ingamma))
   (setq _inangle_desired (float __inangle_desired))
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
  (:inlid
   (&optional __inlid)
   (if __inlid (setq _inlid __inlid)) _inlid)
  (:inlambda
   (&optional __inlambda)
   (if __inlambda (setq _inlambda __inlambda)) _inlambda)
  (:intau_delta
   (&optional __intau_delta)
   (if __intau_delta (setq _intau_delta __intau_delta)) _intau_delta)
  (:inmu
   (&optional __inmu)
   (if __inmu (setq _inmu __inmu)) _inmu)
  (:ingamma
   (&optional __ingamma)
   (if __ingamma (setq _ingamma __ingamma)) _ingamma)
  (:inangle_desired
   (&optional __inangle_desired)
   (if __inangle_desired (setq _inangle_desired __inangle_desired)) _inangle_desired)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _order
    (* 4    (length _order)) 4
    ;; int32 _num_robots
    4
    ;; float32 _inlid
    4
    ;; float32 _inlambda
    4
    ;; float32 _intau_delta
    4
    ;; float32 _inmu
    4
    ;; float32 _ingamma
    4
    ;; float32 _inangle_desired
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
     ;; float32 _inlid
       (sys::poke _inlid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _inlambda
       (sys::poke _inlambda (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _intau_delta
       (sys::poke _intau_delta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _inmu
       (sys::poke _inmu (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ingamma
       (sys::poke _ingamma (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _inangle_desired
       (sys::poke _inangle_desired (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _inlid
     (setq _inlid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _inlambda
     (setq _inlambda (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _intau_delta
     (setq _intau_delta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _inmu
     (setq _inmu (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ingamma
     (setq _ingamma (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _inangle_desired
     (setq _inangle_desired (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get co_coverage::Subteam :md5sum-) "01d15b4fb8b52d79a988fadb9fea105f")
(setf (get co_coverage::Subteam :datatype-) "co_coverage/Subteam")
(setf (get co_coverage::Subteam :definition-)
      "Header header
int32[] order
int32 num_robots
float32 inlid
float32 inlambda
float32 intau_delta
float32 inmu
float32 ingamma
float32 inangle_desired

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



(provide :co_coverage/Subteam "01d15b4fb8b52d79a988fadb9fea105f")


