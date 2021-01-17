;; Auto-generated. Do not edit!


(when (boundp 'car_move::AddTwoInts)
  (if (not (find-package "CAR_MOVE"))
    (make-package "CAR_MOVE"))
  (shadow 'AddTwoInts (find-package "CAR_MOVE")))
(unless (find-package "CAR_MOVE::ADDTWOINTS")
  (make-package "CAR_MOVE::ADDTWOINTS"))
(unless (find-package "CAR_MOVE::ADDTWOINTSREQUEST")
  (make-package "CAR_MOVE::ADDTWOINTSREQUEST"))
(unless (find-package "CAR_MOVE::ADDTWOINTSRESPONSE")
  (make-package "CAR_MOVE::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass car_move::AddTwoIntsRequest
  :super ros::object
  :slots ())

(defmethod car_move::AddTwoIntsRequest
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

(defclass car_move::AddTwoIntsResponse
  :super ros::object
  :slots ())

(defmethod car_move::AddTwoIntsResponse
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

(defclass car_move::AddTwoInts
  :super ros::object
  :slots ())

(setf (get car_move::AddTwoInts :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_move::AddTwoInts :datatype-) "car_move/AddTwoInts")
(setf (get car_move::AddTwoInts :request) car_move::AddTwoIntsRequest)
(setf (get car_move::AddTwoInts :response) car_move::AddTwoIntsResponse)

(defmethod car_move::AddTwoIntsRequest
  (:response () (instance car_move::AddTwoIntsResponse :init)))

(setf (get car_move::AddTwoIntsRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_move::AddTwoIntsRequest :datatype-) "car_move/AddTwoIntsRequest")
(setf (get car_move::AddTwoIntsRequest :definition-)
      "
---
")

(setf (get car_move::AddTwoIntsResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get car_move::AddTwoIntsResponse :datatype-) "car_move/AddTwoIntsResponse")
(setf (get car_move::AddTwoIntsResponse :definition-)
      "
---
")



(provide :car_move/AddTwoInts "d41d8cd98f00b204e9800998ecf8427e")


