
(cl:in-package :asdf)

(defsystem "billing-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "billmsg" :depends-on ("_package_billmsg"))
    (:file "_package_billmsg" :depends-on ("_package"))
  ))