
(cl:in-package :asdf)

(defsystem "co_coverage-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Status" :depends-on ("_package_Status"))
    (:file "_package_Status" :depends-on ("_package"))
    (:file "SubteamOrder" :depends-on ("_package_SubteamOrder"))
    (:file "_package_SubteamOrder" :depends-on ("_package"))
    (:file "SubteamParameters" :depends-on ("_package_SubteamParameters"))
    (:file "_package_SubteamParameters" :depends-on ("_package"))
    (:file "Team" :depends-on ("_package_Team"))
    (:file "_package_Team" :depends-on ("_package"))
  ))