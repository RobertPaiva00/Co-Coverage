;; Auto-generated. Do not edit!


(when (boundp 'co_coverage::SubteamParameters)
  (if (not (find-package "CO_COVERAGE"))
    (make-package "CO_COVERAGE"))
  (shadow 'SubteamParameters (find-package "CO_COVERAGE")))
(unless (find-package "CO_COVERAGE::SUBTEAMPARAMETERS")
  (make-package "CO_COVERAGE::SUBTEAMPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude SubteamParameters.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass co_coverage::SubteamParameters
  :super ros::object
  :slots (_header _inlid _inlambda _intau_delta _inmu _ingamma _inangle_desired ))

(defmethod co_coverage::SubteamParameters
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:inlid __inlid) 0.0)
    ((:inlambda __inlambda) 0.0)
    ((:intau_delta __intau_delta) 0.0)
    ((:inmu __inmu) 0.0)
    ((:ingamma __ingamma) 0.0)
    ((:inangle_desired __inangle_desired) 0.0)
    )
   (send-super :init)
   (setq _header __header)
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
    ;; float64 _inlid
    8
    ;; float64 _inlambda
    8
    ;; float64 _intau_delta
    8
    ;; float64 _inmu
    8
    ;; float64 _ingamma
    8
    ;; float64 _inangle_desired
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _inlid
       (sys::poke _inlid (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _inlambda
       (sys::poke _inlambda (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _intau_delta
       (sys::poke _intau_delta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _inmu
       (sys::poke _inmu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ingamma
       (sys::poke _ingamma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _inangle_desired
       (sys::poke _inangle_desired (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _inlid
     (setq _inlid (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _inlambda
     (setq _inlambda (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _intau_delta
     (setq _intau_delta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _inmu
     (setq _inmu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ingamma
     (setq _ingamma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _inangle_desired
     (setq _inangle_desired (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get co_coverage::SubteamParameters :md5sum-) "3960caeb2a960469bd33c37683b0c1f3")
(setf (get co_coverage::SubteamParameters :datatype-) "co_coverage/SubteamParameters")
(setf (get co_coverage::SubteamParameters :definition-)
      "Header header
float64 inlid
float64 inlambda
float64 intau_delta
float64 inmu
float64 ingamma
float64 inangle_desired

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



(provide :co_coverage/SubteamParameters "3960caeb2a960469bd33c37683b0c1f3")


