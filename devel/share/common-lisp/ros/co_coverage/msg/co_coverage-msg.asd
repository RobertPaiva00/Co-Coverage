
(cl:in-package :asdf)

(defsystem "co_coverage-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Status" :depends-on ("_package_Status"))
    (:file "_package_Status" :depends-on ("_package"))
    (:file "Subteam" :depends-on ("_package_Subteam"))
    (:file "_package_Subteam" :depends-on ("_package"))
    (:file "Team" :depends-on ("_package_Team"))
    (:file "_package_Team" :depends-on ("_package"))
  ))