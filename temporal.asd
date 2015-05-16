#|
  This file is a part of temporal project.
|#

(in-package :cl-user)
(defpackage temporal-asd
  (:use :cl :asdf))
(in-package :temporal-asd)

(defsystem temporal
  :version "0.1"
  :author ""
  :license ""
  :depends-on (:log4cl)
  :components ((:module "src"
                :components
                ((:file "temporal"))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op temporal-test))))
