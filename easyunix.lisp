(defpackage :cl-easyunix
  (:nicknames :eu)
  (:use :cl)
  (:export cat ls cat-> cat->>))
(in-package :cl-easyunix)

(defun cat (file-name)
  (with-output-to-string (out)
    (with-open-file (str file-name :direction :input)
      (when str
        (loop for line = (read-line str nil)
              while line do (format out "~A~%" line))))
    out))

(defun ls (&optional (path #p"."))
  (directory
    (format nil "~A/*.*" path)))

(defun cat-> (str file-name)
  (with-open-file (file file-name
                        :direction :output
                        :if-exists :supersede)
    (format file "~A" str)))

(defun cat->> (str file-name)
  (with-open-file (file file-name
                        :direction :output
                        :if-exists :append)
    (format file "~A" str)))

