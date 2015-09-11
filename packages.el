;;; config.el --- W3M Layer configuration File for Spacemacs
;;
;; Copyright (c) 2012-2014 venmos
;; Copyright (c) 2014-2015 venmos
;;
;; Author: Kuroi Mato <venmos@fuck.gfw.es>
;; URL: https://github.com/venmos/org-page-layer
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq org-page-packages
      '(
        org-page
        ))

(defun org-page/init-org-page ()
  (use-package org-page
    :command (op/new-post
              op/new-repository
              op/do-publication
              op/do-publication-and-preview-site
              op/insert-options-template
              )
    :init
    (progn
      evil-leader/set-key
      "aon" 'op/new-post
      "aor" 'op/new-repository
      "aop" 'op/do-publication
      "aov" 'op/do-publication-and-preview-site
      "aot" 'op/insert-options-template
      )))
