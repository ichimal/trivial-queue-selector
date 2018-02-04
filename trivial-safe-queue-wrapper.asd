(in-package :trivial-queue-selector-asd)

(defsystem trivial-safe-queue-wrapper
  :name "trivial-safe-queue-wrapper"
  :version "0.1"
  :maintainer "SUZUKI Shingo"
  :author "SUZUKI Shingo"
  :licence "MIT"
  :description
    "A safe-queue wrapper"
  :serial nil
  :depends-on (:trivial-queue-selector :safe-queue)
  :components
    ((:file #:safe-queue-wrapper)) )


