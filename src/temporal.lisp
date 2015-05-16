(in-package :cl-user)
(defpackage temporal
  (:use :cl)
  (:export :temporal :tick))
(in-package :temporal)

(defclass temporal () 
  ; an objects that changes with time, the main interface is through the method 'tick' which represents the passage of one unit of time 
  ((funccalls :accessor funccalls :type list :initform '() :allocation :class) )) 
 
(defmethod tick ((obj temporal)) 
  (mapcar #'(lambda (func) (funcall func obj)) (funccalls obj)))

