(load  "~/.emacs.d/elisp/basic-edit-toolkit.el")
(load  "~/.emacs.d/elisp/highlight-parentheses/highlight-parentheses.el")
(load  "~/.emacs.d/elisp/fill-column-indicator/fill-column-indicator.el")
(load  "~/.emacs.d/elisp/zero-tools.el")
;; (load  "~/.emacs.d/elisp/emacs-for-python/epy-init.el")

;; Autoloads
(add-to-list 'load-path "~/.emacs.d/elisp/lua-mode/")
(autoload 'lua-mode "lua-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))

(add-to-list 'load-path "~/.emacs.d/elisp/js2-mode/")
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-to-list 'load-path "~/.emacs.d/elisp/coffee-mode/")
(autoload 'coffee-mode "coffee-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))

(add-to-list 'load-path "~/.emacs.d/elisp/jinja2-mode/")
(autoload 'jinja2-mode "jinja2" nil t)
(add-to-list 'auto-mode-alist '("\\.jinja2$" . jinja2-mode))

(add-to-list 'load-path "~/.emacs.d/elisp/emacs-for-python/extensions/")
(autoload 'python-mode "python" nil t)
(autoload 'cython-mode "cython-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.python$" . python-mode))
(add-to-list 'auto-mode-alist '("\\.pyx\\'" . cython-mode))
(add-to-list 'auto-mode-alist '("\\.pxd\\'" . cython-mode))
(add-to-list 'auto-mode-alist '("\\.pxi\\'" . cython-mode))


;; Ido
(autoload 'ido-everywhere "ido")
(ido-everywhere 1)
(ido-mode 1)

(setq ido-enable-flex-matching t) ;; enable fuzzy matching


;; Flymake
(when (load-file "~/.emacs.d/elisp/emacs-for-python/extensions/flymake-patch.el")
  (setq flymake-info-line-regex
        (append flymake-info-line-regex '("unused$" "^redefinition" "used$")))
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "~/.emacs.d/pycheckers" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init))
  (load-library "flymake-cursor"))

(eval-after-load 'python
  (add-hook 'python-mode-hook 'flymake-find-file-hook))


(standard-display-ascii ?\t "↹    ")


;; Keys
(global-set-key (kbd "M-DEL") 'kill-word)
(global-set-key (kbd "<M-backspace>") 'backward-kill-word)
(global-set-key (kbd "M-SPC") 'dabbrev-expand)
(global-set-key (kbd "M-RET") 'flymake-display-err-menu-for-current-line)
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)

(global-set-key (kbd "S-M-SPC") 'set-mark-command)
(global-set-key (kbd "C-$") 'comment-or-uncomment-region+)
(global-set-key (kbd "C-.") 'backward-kill-line)

(global-set-key [C-tab] 'other-window)
(global-set-key [C-S-tab]
                (lambda ()
                  (interactive)
                  (other-window -1)))

(global-set-key [C-up] 'duplicate-line-or-region-above)
(global-set-key [C-down] 'duplicate-line-or-region-below)
(global-set-key [M-up] 'move-text-up)
(global-set-key [M-down] 'move-text-down)
(global-set-key [C-S-up] 'backward-paragraph)
(global-set-key [C-S-down] 'forward-paragraph)
(global-set-key [M-S-up] 'backward-paragraph)
(global-set-key [M-S-down] 'forward-paragraph)
(windmove-default-keybindings '(meta))
(global-set-key [(meta shift left)] 'windmove-left)
(global-set-key [(meta shift right)] 'windmove-right)
(global-set-key [(meta shift up)] 'windmove-up)
(global-set-key [(meta shift down)] 'windmove-down)