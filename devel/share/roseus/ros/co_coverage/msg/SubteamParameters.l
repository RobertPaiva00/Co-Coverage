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
  :slots (_header _lid _lambda _tau_delta _mu _gamma _angle_desired _curve _order_inv ))

(defmethod co_coverage::SubteamParameters
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lid __lid) 0.0)
    ((:lambda __lambda) 0.0)
    ((:tau_delta __tau_delta) 0.0)
    ((:mu __mu) 0.0)
    ((:gamma __gamma) 0.0)
    ((:angle_desired __angle_desired) 0.0)
    ((:curve __curve) 0)
    ((:order_inv __order_inv) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lid (float __lid))
   (setq _lambda (float __lambda))
   (setq _tau_delta (float __tau_delta))
   (setq _mu (float __mu))
   (setq _gamma (float __gamma))
   (setq _angle_desired (float __angle_desired))
   (setq _curve (round __curve))
   (setq _order_inv __order_inv)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lid
   (&optional __lid)
   (if __lid (setq _lid __lid)) _lid)
  (:lambda
   (&optional __lambda)
   (if __lambda (setq _lambda __lambda)) _lambda)
  (:tau_delta
   (&optional __tau_delta)
   (if __tau_delta (setq _tau_delta __tau_delta)) _tau_delta)
  (:mu
   (&optional __mu)
   (if __mu (setq _mu __mu)) _mu)
  (:gamma
   (&optional __gamma)
   (if __gamma (setq _gamma __gamma)) _gamma)
  (:angle_desired
   (&optional __angle_desired)
   (if __angle_desired (setq _angle_desired __angle_desired)) _angle_desired)
  (:curve
   (&optional __curve)
   (if __curve (setq _curve __curve)) _curve)
  (:order_inv
   (&optional __order_inv)
   (if __order_inv (setq _order_inv __order_inv)) _order_inv)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _lid
    8
    ;; float64 _lambda
    8
    ;; float64 _tau_delta
    8
    ;; float64 _mu
    8
    ;; float64 _gamma
    8
    ;; float64 _angle_desired
    8
    ;; uint8 _curve
    1
    ;; int32[] _order_inv
    (* 4    (length _order_inv)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _lid
       (sys::poke _lid (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lambda
       (sys::poke _lambda (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tau_delta
       (sys::poke _tau_delta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mu
       (sys::poke _mu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gamma
       (sys::poke _gamma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_desired
       (sys::poke _angle_desired (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _curve
       (write-byte _curve s)
     ;; int32[] _order_inv
     (write-long (length _order_inv) s)
     (dotimes (i (length _order_inv))
       (write-long (elt _order_inv i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _lid
     (setq _lid (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lambda
     (setq _lambda (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tau_delta
     (setq _tau_delta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mu
     (setq _mu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gamma
     (setq _gamma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_desired
     (setq _angle_desired (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _curve
     (setq _curve (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32[] _order_inv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _order_inv (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _order_inv i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get co_coverage::SubteamParameters :md5sum-) "d9c99d86e077aca9b38aebac11d6f8df")
(setf (get co_coverage::SubteamParameters :datatype-) "co_coverage/SubteamParameters")
(setf (get co_coverage::SubteamParameters :definition-)
      "Header header
float64 lid
float64 lambda
float64 tau_delta
float64 mu
float64 gamma
float64 angle_desired
uint8 curve
int32[] order_inv

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



(provide :co_coverage/SubteamParameters "d9c99d86e077aca9b38aebac11d6f8df")


