;; Auto-generated. Do not edit!


(when (boundp 'conv::conv)
  (if (not (find-package "CONV"))
    (make-package "CONV"))
  (shadow 'conv (find-package "CONV")))
(unless (find-package "CONV::CONV")
  (make-package "CONV::CONV"))
(unless (find-package "CONV::CONVREQUEST")
  (make-package "CONV::CONVREQUEST"))
(unless (find-package "CONV::CONVRESPONSE")
  (make-package "CONV::CONVRESPONSE"))

(in-package "ROS")





(defclass conv::convRequest
  :super ros::object
  :slots (_srcmatrix_A_rownum _srcmatrix_A_colnum _srcmatrix_A _srcmatrix_B_rownum _srcmatrix_B_colnum _srcmatrix_B ))

(defmethod conv::convRequest
  (:init
   (&key
    ((:srcmatrix_A_rownum __srcmatrix_A_rownum) 0)
    ((:srcmatrix_A_colnum __srcmatrix_A_colnum) 0)
    ((:srcmatrix_A __srcmatrix_A) (make-array 0 :initial-element 0 :element-type :integer))
    ((:srcmatrix_B_rownum __srcmatrix_B_rownum) 0)
    ((:srcmatrix_B_colnum __srcmatrix_B_colnum) 0)
    ((:srcmatrix_B __srcmatrix_B) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _srcmatrix_A_rownum (round __srcmatrix_A_rownum))
   (setq _srcmatrix_A_colnum (round __srcmatrix_A_colnum))
   (setq _srcmatrix_A __srcmatrix_A)
   (setq _srcmatrix_B_rownum (round __srcmatrix_B_rownum))
   (setq _srcmatrix_B_colnum (round __srcmatrix_B_colnum))
   (setq _srcmatrix_B __srcmatrix_B)
   self)
  (:srcmatrix_A_rownum
   (&optional __srcmatrix_A_rownum)
   (if __srcmatrix_A_rownum (setq _srcmatrix_A_rownum __srcmatrix_A_rownum)) _srcmatrix_A_rownum)
  (:srcmatrix_A_colnum
   (&optional __srcmatrix_A_colnum)
   (if __srcmatrix_A_colnum (setq _srcmatrix_A_colnum __srcmatrix_A_colnum)) _srcmatrix_A_colnum)
  (:srcmatrix_A
   (&optional __srcmatrix_A)
   (if __srcmatrix_A (setq _srcmatrix_A __srcmatrix_A)) _srcmatrix_A)
  (:srcmatrix_B_rownum
   (&optional __srcmatrix_B_rownum)
   (if __srcmatrix_B_rownum (setq _srcmatrix_B_rownum __srcmatrix_B_rownum)) _srcmatrix_B_rownum)
  (:srcmatrix_B_colnum
   (&optional __srcmatrix_B_colnum)
   (if __srcmatrix_B_colnum (setq _srcmatrix_B_colnum __srcmatrix_B_colnum)) _srcmatrix_B_colnum)
  (:srcmatrix_B
   (&optional __srcmatrix_B)
   (if __srcmatrix_B (setq _srcmatrix_B __srcmatrix_B)) _srcmatrix_B)
  (:serialization-length
   ()
   (+
    ;; int32 _srcmatrix_A_rownum
    4
    ;; int32 _srcmatrix_A_colnum
    4
    ;; int8[] _srcmatrix_A
    (* 1    (length _srcmatrix_A)) 4
    ;; int32 _srcmatrix_B_rownum
    4
    ;; int32 _srcmatrix_B_colnum
    4
    ;; uint8[] _srcmatrix_B
    (* 1    (length _srcmatrix_B)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _srcmatrix_A_rownum
       (write-long _srcmatrix_A_rownum s)
     ;; int32 _srcmatrix_A_colnum
       (write-long _srcmatrix_A_colnum s)
     ;; int8[] _srcmatrix_A
     (write-long (length _srcmatrix_A) s)
     (dotimes (i (length _srcmatrix_A))
       (write-byte (elt _srcmatrix_A i) s)
       )
     ;; int32 _srcmatrix_B_rownum
       (write-long _srcmatrix_B_rownum s)
     ;; int32 _srcmatrix_B_colnum
       (write-long _srcmatrix_B_colnum s)
     ;; uint8[] _srcmatrix_B
     (write-long (length _srcmatrix_B) s)
     (princ _srcmatrix_B s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _srcmatrix_A_rownum
     (setq _srcmatrix_A_rownum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _srcmatrix_A_colnum
     (setq _srcmatrix_A_colnum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8[] _srcmatrix_A
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _srcmatrix_A (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _srcmatrix_A i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _srcmatrix_A i) 127) (setf (elt _srcmatrix_A i) (- (elt _srcmatrix_A i) 256)))
     ))
   ;; int32 _srcmatrix_B_rownum
     (setq _srcmatrix_B_rownum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _srcmatrix_B_colnum
     (setq _srcmatrix_B_colnum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _srcmatrix_B
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _srcmatrix_B (make-array n :element-type :char))
     (replace _srcmatrix_B buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass conv::convResponse
  :super ros::object
  :slots (_result ))

(defmethod conv::convResponse
  (:init
   (&key
    ((:result __result) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8[] _result
    (* 1    (length _result)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _result
     (write-long (length _result) s)
     (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _result
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _result (make-array n :element-type :char))
     (replace _result buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass conv::conv
  :super ros::object
  :slots ())

(setf (get conv::conv :md5sum-) "8a5391416c94b934abefe3529f6e4d67")
(setf (get conv::conv :datatype-) "conv/conv")
(setf (get conv::conv :request) conv::convRequest)
(setf (get conv::conv :response) conv::convResponse)

(defmethod conv::convRequest
  (:response () (instance conv::convResponse :init)))

(setf (get conv::convRequest :md5sum-) "8a5391416c94b934abefe3529f6e4d67")
(setf (get conv::convRequest :datatype-) "conv/convRequest")
(setf (get conv::convRequest :definition-)
      "int32 srcmatrix_A_rownum
int32 srcmatrix_A_colnum
int8[] srcmatrix_A
int32 srcmatrix_B_rownum
int32 srcmatrix_B_colnum
uint8[] srcmatrix_B
---
uint8[] result
")

(setf (get conv::convResponse :md5sum-) "8a5391416c94b934abefe3529f6e4d67")
(setf (get conv::convResponse :datatype-) "conv/convResponse")
(setf (get conv::convResponse :definition-)
      "int32 srcmatrix_A_rownum
int32 srcmatrix_A_colnum
int8[] srcmatrix_A
int32 srcmatrix_B_rownum
int32 srcmatrix_B_colnum
uint8[] srcmatrix_B
---
uint8[] result
")



(provide :conv/conv "8a5391416c94b934abefe3529f6e4d67")


