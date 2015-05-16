(in-package :cl-user)
(defpackage temporal-test
  (:use :cl
        :temporal
        :prove))
(in-package :temporal-test)

;; NOTE: To run this test file, execute `(asdf:test-system :temporal)' in your Lisp.


(plan 1)

(defclass matter (temporal:temporal)
  ((funcalls :initform '(surprise me))))
(defmethod surprise ((this matter)) (format nil "surprise"))
(defmethod me ((this matter)) (format nil "MEEEEE!!!!"))   
(defvar *matter* (make-instance 'matter))
(is (tick *matter*) '("surprise" "MEEEEE!!!!"))

(finalize)
