;; Auto-generated. Do not edit!


(when (boundp 'add_markers::Pickup)
  (if (not (find-package "ADD_MARKERS"))
    (make-package "ADD_MARKERS"))
  (shadow 'Pickup (find-package "ADD_MARKERS")))
(unless (find-package "ADD_MARKERS::PICKUP")
  (make-package "ADD_MARKERS::PICKUP"))
(unless (find-package "ADD_MARKERS::PICKUPREQUEST")
  (make-package "ADD_MARKERS::PICKUPREQUEST"))
(unless (find-package "ADD_MARKERS::PICKUPRESPONSE")
  (make-package "ADD_MARKERS::PICKUPRESPONSE"))

(in-package "ROS")





(defclass add_markers::PickupRequest
  :super ros::object
  :slots (_goal_order ))

(defmethod add_markers::PickupRequest
  (:init
   (&key
    ((:goal_order __goal_order) 0)
    )
   (send-super :init)
   (setq _goal_order (round __goal_order))
   self)
  (:goal_order
   (&optional __goal_order)
   (if __goal_order (setq _goal_order __goal_order)) _goal_order)
  (:serialization-length
   ()
   (+
    ;; int64 _goal_order
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _goal_order
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _goal_order (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _goal_order) (= (length (_goal_order . bv)) 2)) ;; bignum
              (write-long (ash (elt (_goal_order . bv) 0) 0) s)
              (write-long (ash (elt (_goal_order . bv) 1) -1) s))
             ((and (class _goal_order) (= (length (_goal_order . bv)) 1)) ;; big1
              (write-long (elt (_goal_order . bv) 0) s)
              (write-long (if (>= _goal_order 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _goal_order s)(write-long (if (>= _goal_order 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _goal_order
#+(or :alpha :irix6 :x86_64)
      (setf _goal_order (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _goal_order (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass add_markers::PickupResponse
  :super ros::object
  :slots (_feedback ))

(defmethod add_markers::PickupResponse
  (:init
   (&key
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _feedback (string __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass add_markers::Pickup
  :super ros::object
  :slots ())

(setf (get add_markers::Pickup :md5sum-) "97fe84cd0a5806c89272852f77d29a02")
(setf (get add_markers::Pickup :datatype-) "add_markers/Pickup")
(setf (get add_markers::Pickup :request) add_markers::PickupRequest)
(setf (get add_markers::Pickup :response) add_markers::PickupResponse)

(defmethod add_markers::PickupRequest
  (:response () (instance add_markers::PickupResponse :init)))

(setf (get add_markers::PickupRequest :md5sum-) "97fe84cd0a5806c89272852f77d29a02")
(setf (get add_markers::PickupRequest :datatype-) "add_markers/PickupRequest")
(setf (get add_markers::PickupRequest :definition-)
      "int64 goal_order
---
string feedback

")

(setf (get add_markers::PickupResponse :md5sum-) "97fe84cd0a5806c89272852f77d29a02")
(setf (get add_markers::PickupResponse :datatype-) "add_markers/PickupResponse")
(setf (get add_markers::PickupResponse :definition-)
      "int64 goal_order
---
string feedback

")



(provide :add_markers/Pickup "97fe84cd0a5806c89272852f77d29a02")


