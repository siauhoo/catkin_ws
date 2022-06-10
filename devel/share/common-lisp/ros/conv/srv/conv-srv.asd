
(cl:in-package :asdf)

(defsystem "conv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "conv" :depends-on ("_package_conv"))
    (:file "_package_conv" :depends-on ("_package"))
  ))