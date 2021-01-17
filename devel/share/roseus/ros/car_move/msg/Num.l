;; Auto-generated. Do not edit!


(when (boundp 'car_move::Num)
  (if (not (find-package "CAR_MOVE"))
    (make-package "CAR_MOVE"))
  (shadow 'Num (find-package "CAR_MOVE")))
(unless (find-package "CAR_MOVE::NUM")
  (make-package "CAR_MOVE::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass car_move::Num
  :super ros::object
  :slots ())

(defmethod car_move::Num
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get car_move::Num :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_move::Num :datatype-) "car_move/Num")
(setf (get car_move::Num :definition-)
      "
")



(provide :car_move/Num "d41d8cd98f00b204e9800998ecf8427e")


