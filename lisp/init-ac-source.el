;; init-ac-source

(require-package 'auto-complete-clang)

(require 'auto-complete-clang)
(setq ac-clang-flags
      (append '("-std=c++11")
	      (mapcar (lambda (item) (concat "-I" item))
		      (split-string
		       "
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1
 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.0.0/include
 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk/usr/include
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk/System/Library/Frameworks
"
		       ))))

(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-srouce-clang) ac-srouces)))

(add-hook 'c-mode-common-hook 'my-ac-ccmode-setup)

(provide 'init-ac-source)
