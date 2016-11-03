
(require-package 'jedi)

(add-hook 'python-mode-hook 'jedi:setup)

(setq jedi:complete-on-dot t)

(provide 'init-jedi)
