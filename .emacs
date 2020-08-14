;; enable MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(column-number-mode t)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (deeper-blue)))
 '(electric-indent-mode t)
 '(js-chain-indent t)
 '(js-curly-indent-offset 0)
 '(js-indent-level 2)
 '(js2-highlight-level 3)
 '(js2-mode-indent-ignore-first-tab t)
 '(make-backup-files nil)
 '(mmm-major-mode-preferences
   (quote
    ((perl cperl-mode perl-mode)
     (python python-mode python-mode)
     (javascript js2-mode c++-mode)
     (java jde-mode java-mode c++-mode)
     (css css-mode c++-mode))))
 '(package-selected-packages
   (quote
    (scss-mode js2-mode fsharp-mode vue-mode json-mode powershell omnisharp company exec-path-from-shell)))
 '(show-paren-mode t)
 '(speedbar-show-unknown-files t)
 '(tool-bar-mode nil)
 '(vue-modes
   (quote
    ((:type template :name nil :mode vue-html-mode)
     (:type template :name html :mode vue-html-mode)
     (:type script :name nil :mode js-mode)
     (:type script :name js :mode js-mode)
     (:type script :name es6 :mode js-mode)
     (:type script :name ts :mode typescript-mode)
     (:type script :name typescript :mode typescript-mode)
     (:type script :name tsx :mode typescript-tsx-mode)
     (:type style :name nil :mode css-mode)
     (:type style :name css :mode css-mode)
     (:type style :name less :mode less-css-mode)
     (:type style :name scss :mode css-mode)
     (:type style :name sass :mode ssass-mode)
     (:type i18n :name nil :mode json-mode)
     (:type i18n :name json :mode json-mode)
     (:type i18n :name yaml :mode yaml-mode)))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; C# Stuff
(add-hook 'csharp-mode-hook 'omnisharp-mode)
(add-hook 'csharp-mode-hook 'company-mode)

;; MMM Stuff
(add-hook 'mmm-mode-hook
    (lambda ()
        (set-face-background 'mmm-default-submode-face nil)))
