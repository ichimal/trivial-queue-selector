(in-package #:trivial-queue-selector-asd)

(defpackage trivial-cl-speedy-queue-wrapper
  (:use #:cl #:trivial-queue-selector)
  (:export
    #:make-queue-of #:enque #:deque
    #:queue-empty-p #:queue-full-p #:queue-length ))

(in-package #:trivial-cl-speedy-queue-wrapper)

(defmethod make-queue-of ((impl (eql :cl-speedy-queue)) &rest params)
  (declare (ignore impl))
  (apply #'cl-speedy-queue:make-queue params) )

(defmethod enque ((que vector) obj)
  (cl-speedy-queue:enqueue obj que) )

(defmethod deque ((que vector))
  (cl-speedy-queue:dequeue que) )

(defmethod queue-empty-p ((que vector))
  (cl-speedy-queue:queue-empty-p que) )

(defmethod queue-full-p ((que vector))
  (cl-speedy-queue:queue-full-p que) )

(defmethod queue-length ((que vector))
  (cl-speedy-queue:queue-count que) )

