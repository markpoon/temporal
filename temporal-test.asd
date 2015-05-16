#|
  This file is a part of temporal project.
|#

(in-package :cl-user)
(defpackage temporal-test-asd
  (:use :cl :asdf :temporal))
(in-package :temporal-test-asd)

(defsystem temporal-test
  :author ""
  :license ""
  :depends-on (:temporal
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "temporal"))))

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
