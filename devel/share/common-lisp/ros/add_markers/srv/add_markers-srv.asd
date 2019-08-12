
(cl:in-package :asdf)

(defsystem "add_markers-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pickup" :depends-on ("_package_Pickup"))
    (:file "_package_Pickup" :depends-on ("_package"))
  ))