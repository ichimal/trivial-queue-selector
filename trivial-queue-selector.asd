(in-package :cl-user)

(defpackage :trivial-queue-selector-asd
  (:use :cl :asdf) )

(in-package :trivial-queue-selector-asd)

(defsystem trivial-queue-selector
  :name "trivial-queue-selector"
  :version "0.1"
  :maintainer "SUZUKI Shingo"
  :author "SUZUKI Shingo"
  :licence "MIT"
  :description
    "A selector of queue implementations"
  :serial nil
  :components
    ((:file #:queue-selector)) )

(defmethod perform ((op test-op)
                    (component (eql (find-system :trivial-queue-selector))) )
  (declare (ignore op component))
  (operate 'load-op :trivial-queue-selector-test)
  (operate 'test-op :trivial-queue-selector-test :force t) )

