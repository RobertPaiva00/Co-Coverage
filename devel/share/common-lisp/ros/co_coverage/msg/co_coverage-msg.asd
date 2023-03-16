
(cl:in-package :asdf)

(defsystem "co_coverage-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Team" :depends-on ("_package_Team"))
    (:file "_package_Team" :depends-on ("_package"))
  ))