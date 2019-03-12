(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     ;; (package-installed-p 'evil)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

;; make sure to have downloaded archive description.
;; Or use package-archive-contents as suggested by Nicolas Dudebout
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(ensure-package-installed 'auto-complete 'bind-key 'company 'csharp-mode 'dash 'diminish 'epl 'flycheck 'js2-mode 'json-mode 'json-reformat 'json-snatcher 'let-alist 'log4e 'markdown-mode 'omnisharp 'org 'pkg-info 'popup 'powershell 'restclient 'seq 'shut-up 'tss 'typescript-mode 'use-package 'vlf 'w3 'yaxception) ;  --> (nil nil) if iedit and magit are already installed
