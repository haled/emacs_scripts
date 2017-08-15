;; from StackOverflow: https://stackoverflow.com/questions/10092322/how-to-automatically-install-emacs-packages-by-specifying-a-list-of-package-name

;; get list of packages:  c-h v package-activated-list
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

;(ensure-package-installed 'iedit 'magit) ;  --> (nil nil) if iedit and magit are already installed
;(company js2-mode markdown-mode omnisharp f dash s shut-up s csharp-mode popup auto-complete popup dash flycheck seq let-alist pkg-info epl dash org pkg-info epl restclient s seq shut-up tss yaxception log4e json-mode json-snatcher json-reformat auto-complete popup typescript-mode use-package diminish bind-key vlf w3 yaxception zoom-frm frame-cmds frame-fns frame-fns)

(ensure-package-installed 'auto-complete 'bind-key 'company 'csharp-mode 'dash 'diminish 'epl 'f 'flycheck 'frame-cmds 'frame-fns 'js2-mode 'json-mode 'json-reformat 'json-snatcher 'let-alist 'log4e 'markdown-mode 'omnisharp 'org 'pkg-info 'popup 'restclient 's 'seq 'shut-up 'tss 'typescript-mode 'use-package 'vlf 'w3 'yaxception 'zoom-frm)

;; activate installed packages
(package-initialize)
