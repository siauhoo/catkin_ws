;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Event)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Event (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::EVENT")
  (make-package "BEGINNER_TUTORIALS::EVENT"))
(unless (find-package "BEGINNER_TUTORIALS::EVENTREQUEST")
  (make-package "BEGINNER_TUTORIALS::EVENTREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::EVENTRESPONSE")
  (make-package "BEGINNER_TUTORIALS::EVENTRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::EventRequest
  :super ros::object
  :slots (_content ))

(defmethod beginner_tutorials::EventRequest
  (:init
   (&key
    ((:content __content) "")
    )
   (send-super :init)
   (setq _content (string __content))
   self)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::EventResponse
  :super ros::object
  :slots (_content ))

(defmethod beginner_tutorials::EventResponse
  (:init
   (&key
    ((:content __content) "")
    )
   (send-super :init)
   (setq _content (string __content))
   self)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::Event
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::Event :md5sum-) "868b07f2540b8f55d0a16c4ccc0407bf")
(setf (get beginner_tutorials::Event :datatype-) "beginner_tutorials/Event")
(setf (get beginner_tutorials::Event :request) beginner_tutorials::EventRequest)
(setf (get beginner_tutorials::Event :response) beginner_tutorials::EventResponse)

(defmethod beginner_tutorials::EventRequest
  (:response () (instance beginner_tutorials::EventResponse :init)))

(setf (get beginner_tutorials::EventRequest :md5sum-) "868b07f2540b8f55d0a16c4ccc0407bf")
(setf (get beginner_tutorials::EventRequest :datatype-) "beginner_tutorials/EventRequest")
(setf (get beginner_tutorials::EventRequest :definition-)
      "string content
---
string content
")

(setf (get beginner_tutorials::EventResponse :md5sum-) "868b07f2540b8f55d0a16c4ccc0407bf")
(setf (get beginner_tutorials::EventResponse :datatype-) "beginner_tutorials/EventResponse")
(setf (get beginner_tutorials::EventResponse :definition-)
      "string content
---
string content
")



(provide :beginner_tutorials/Event "868b07f2540b8f55d0a16c4ccc0407bf")


