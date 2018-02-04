(in-package #:trivial-queue-selector-asd)

(defpackage trivial-queue-selector
  (:nicknames :qslct)
  (:use #:cl)
  (:export #:load-queue-implementation
           #:*queue-selector-supported-implementations*
           #:make-queue-of
           #:queue-length
           #:queue-empty-p #:queue-full-p
           #:enque #:deque ))

(in-package #:trivial-queue-selector)

(defgeneric make-queue-of (impl &rest params))
(defgeneric queue-length (queue))
(defgeneric queue-empty-p (queue))
(defgeneric queeu-full-p (queue))
(defgeneric enque (queue object))
(defgeneric deque (queue))

(defparameter *queue-selector-supported-implementations*
  '(:safe-queue :cl-speedy-queue) )

(defparameter *queue-impl-wrapper-list*
  (loop for impl in *queue-selector-supported-implementations*
        for wrapper = (intern (concatenate 'string
                                "TRIVIAL-" (string-upcase impl) "-WRAPPER" )
                              'keyword )
        collect impl
        collect wrapper ))

(defun load-queue-implementation (impl)
  (unless (position impl *queue-selector-supported-implementations*)
    (error "trivial-queue-selector does not support ~s yet" impl) )
  (let ((target (getf *queue-impl-wrapper-list* impl)))
    (ql:quickload target)
    (unless (member target *features*)
      (push target *features*)
      t )))

