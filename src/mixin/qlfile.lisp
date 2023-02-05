(uiop:define-package #:40ants-project-templates/mixin/qlfile
  (:use #:cl)
  (:import-from #:mystic.template.file
                #:file-mixin
                #:make-file
                #:files)
  (:export
   #:qlfile-mixin))
(in-package #:40ants-project-templates/mixin/qlfile)


(defclass qlfile-mixin (file-mixin)
  ()
  (:documentation "Adds qlfile into the root of the project."))


(defmethod initialize-instance :after ((self qlfile-mixin) &rest args)
  (push (make-file :40ants-project-templates
                   "mixin/qlfile/qlfile"
                   "qlfile")
        (slot-value self 'files)))