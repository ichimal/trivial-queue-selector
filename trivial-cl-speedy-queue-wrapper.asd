(in-package :trivial-queue-selector-asd)

(defsystem trivial-cl-speedy-queue-wrapper
  :name "trivial-cl-speedy-queue-wrapper"
  :version "0.1"
  :maintainer "SUZUKI Shingo"
  :author "SUZUKI Shingo"
  :licence "MIT"
  :description
    "A cl-speedy-queue wrapper"
  :serial nil
  :depends-on (:trivial-queue-selector :cl-speedy-queue)
  :components
    ((:file #:cl-speedy-queue-wrapper)) )


