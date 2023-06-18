
(cl:in-package :asdf)

(defsystem "billing-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "inc_inv" :depends-on ("_package_inc_inv"))
    (:file "_package_inc_inv" :depends-on ("_package"))
  ))