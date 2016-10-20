;; emacs init.el

;; =============================Emacs Config========================
(setq make-backup-files nil)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list
 'load-path
 (expand-file-name "lisp" user-emacs-directory))


;; 下面每一个被require的feature都对应一个lisp/目录下的同名
;; elisp文件，例如init-utils.el、init-elpa.el

(require 'init-utils)

(require 'init-elpa)

(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-php)
(require 'init-ac-php)
;;(require 'init-fonts)
;;(require 'init-editing-utils)
;;(require 'init-markdown)
;;(require 'init-auctex)


(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (find-file-in-repository auto-complete-clang yasnippet pos-tip fuzzy auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
