;; init-ac-php

(require-package 'cl)
(require-package 'ac-php)

(add-hook 'php-mode-hook
	  '(lambda ()
	     (auto-compelet-mode t)
	     (require 'ac-php)
	     (setq ac-srouces '(ac-srouce-php))
	     (yas-global-mode t)
	     (define-key php-mode-map (kbd "C-]") 'ac-php-find-symbol-at-point) ;; goto define
	     (define-key php-mode-map (kbd "C-t") 'ac-php-location-stack-back)  ;; go back
	     ))

(provide 'init-ac-php)
