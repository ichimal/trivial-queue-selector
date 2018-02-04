(in-package #:trivial-queue-selector-asd)

(defpackage trivial-safe-queue-wrapper
  (:use #:cl #:trivial-queue-selector)
  (:export
    #:make-queue-of #:enque #:deque #:queue-empty-p #:queue-length ))

(in-package #:trivial-safe-queue-wrapper)

(defmethod make-queue-of ((impl (eql :safe-queue)) &rest params)
  (declare (ignore impl))
  (apply #'safe-queue:make-queue params) )

(defmethod enque ((que lparallel.cons-queue:cons-queue) obj)
  (safe-queue:enqueue obj que) )

(defmethod deque ((que lparallel.cons-queue:cons-queue))
  (safe-queue:dequeue que) )

(defmethod queue-empty-p ((que lparallel.cons-queue:cons-queue))
  (safe-queue:queue-empty-p que) )

(defmethod queue-length ((que lparallel.cons-queue:cons-queue))
  (safe-queue:queue-count que) )

