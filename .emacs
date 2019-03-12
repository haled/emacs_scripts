;; enable MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("*" . "~/file_backups"))))
 '(column-number-mode t)
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-dabbrev company-etags)))
 '(custom-enabled-themes (quote (tango-dark)))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-scratch-message nil)
 '(omnisharp-expected-server-version "1.23.1")
 '(omnisharp-host "http://localhost:2000/")
 '(omnisharp-server-executable-path "~/.emacs.d/.cache/omnisharp/server/v1.23.1/omnisharp")
 '(package-selected-packages
   (quote
    (zoom-frm w3 vlf use-package typescript-mode tss restclient powershell org omnisharp markdown-mode js2-mode company)))
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(tramp-smb-program "smbutil")
 '(tramp-verbose 3))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; enable electric-pair-mode for csharp-mode
(defun my-csharp-mode-hook ()
  ;; enable the stuff you want for C# here
  (electric-pair-mode 1))
;(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)
(add-hook 'csharp-mode-hook 'omnisharp-mode)
(add-hook 'csharp-mode-hook 'company-mode)

(add-to-list 'auto-mode-alist '("\\.cshtml\\'" . html-mode))

;; Enable completion after typing .
(eval-after-load
    'company
    '(add-to-list 'company-backends 'company-omnisharp))


