;; init-theme

(require-package 'material-theme)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'material t)

(provide 'init-theme)
