(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-by-copying t)
 '(backup-by-copying-when-linked t)
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(browse-url-browser-function (quote browse-url-chromium))
 '(css-indent-offset 2)
 '(delete-old-versions t)
 '(erc-nick "paradoxxxzero")
 '(explicit-shell-file-name "/bin/zsh")
 '(fci-rule-color "#222222")
 '(fci-rule-width 1)
 '(fill-column 80)
 '(flymake-cursor-error-display-delay 0)
 '(flymake-cursor-number-of-errors-to-display 4)
 '(flymake-log-level 0)
 '(flymake-no-changes-timeout 0)
 '(flymake-number-of-errors-to-display 10)
 '(flymake-run-in-place nil)
 '(hl-paren-colors (quote ("orange1" "yellow1" "greenyellow" "green1" "springgreen1" "cyan1" "slateblue1" "magenta1" "purple" "orange1" "yellow1" "greenyellow" "green1" "springgreen1" "cyan1" "slateblue1" "magenta1" "purple")))
 '(home-end-enable t)
 '(ido-ignore-directories (quote ("\\`CVS/" "\\`\\.\\./" "\\`\\./" "\\`__pycache__")))
 '(ido-ignore-files (quote ("\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./")))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(ispell-dictionary "francais")
 '(ispell-program-name "/usr/bin/aspell")
 '(jabber-chat-buffer-show-avatar nil)
 '(jabber-history-enabled t)
 '(jinja2-user-functions (quote ("date_format" "money_format" "money_format_no_currency" "sublength" "json" "percent_format" "person_title" "mail_format" "sort_by" "split")))
 '(jinja2-user-keywords (quote ("auth" "showonmatch" "errorproof")))
 '(kept-new-versions 6)
 '(kept-old-versions 2)
 '(menu-bar-mode nil)
 '(minimap-dedicated-window t)
 '(minimap-fixed-width t)
 '(minimap-update-delay 0.0001)
 '(org-log-done (quote time))
 '(python-shell-virtualenv-path "/home/zero/.envs/pypet")
 '(remote-shell-program "zsh")
 '(require-final-newline t)
 '(rst-level-face-base-color "black")
 '(safe-local-variable-values (quote ((py-indent-offset . 4) (Mode . Python) (js2-basic-offset . 4))))
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(sgml-basic-offset 2)
 '(show-trailing-whitespace nil)
 '(tab-width 4)
 '(term-buffer-maximum-size 0)
 '(terminal-redisplay-interval 100000)
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
 '(undo-ask-before-discard t)
 '(undo-limit 100000000)
 '(undo-outer-limit 120000000)
 '(undo-strong-limit 1200000)
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(vc-follow-symlinks t)
 '(vc-make-backup-files t)
 '(version-control t)
 '(visible-bell t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#eeeeee" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "Ubuntu Mono"))))
 '(ac-candidate-face ((t (:background "black" :foreground "dark orange"))))
 '(ac-completion-face ((t (:foreground "yellow" :box (:line-width 2 :color "blue" :style released-button)))))
 '(ac-selection-face ((t (:background "black" :foreground "red"))))
 '(button ((t (:box (:line-width 1 :color "violet red" :style released-button)))))
 '(c-annotation-face ((t (:foreground "deep sky blue"))))
 '(cursor ((t (:background "light steel blue"))))
 '(custom-button-pressed-unraised ((t (:foreground "violet" :box (:line-width 1 :color "DodgerBlue1" :style pressed-button)))))
 '(custom-button-unraised ((t (:box (:line-width 1 :color "DodgerBlue1" :style released-button)))))
 '(custom-comment-tag ((t (:foreground "gray30"))))
 '(custom-documentation ((t (:foreground "grey45"))))
 '(diff-added ((t (:foreground "green"))))
 '(diff-file-header ((t (:foreground "DarkSlateGray3" :weight bold))))
 '(diff-header ((t (:foreground "DarkSlateGray1"))))
 '(diff-refine-change ((t (:foreground "RoyalBlue3"))))
 '(diff-removed ((t (:foreground "red"))))
 '(flymake-errline ((t (:underline "red"))))
 '(flymake-infoline ((t (:underline "blue"))))
 '(flymake-warnline ((t (:underline "goldenrod"))))
 '(font-lock-builtin-face ((t (:foreground "SpringGreen2"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "magenta"))))
 '(font-lock-comment-face ((t (:italic t :foreground "#9933cc"))))
 '(font-lock-constant-face ((t (:foreground "SeaGreen3"))))
 '(font-lock-doc-face ((t (:foreground "LightSalmon"))))
 '(font-lock-function-name-face ((t (:foreground "#ffcc00"))))
 '(font-lock-keyword-face ((t (:foreground "#ff6600"))))
 '(font-lock-negation-char-face ((t (:foreground "deepskyblue"))))
 '(font-lock-preprocessor-face ((t (:foreground "#aaffff"))))
 '(font-lock-reference-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-string-face ((t (:foreground "#66FF00"))))
 '(font-lock-type-face ((t (:foreground "DodgerBlue2"))))
 '(font-lock-variable-name-face ((t (:foreground "deep pink"))))
 '(font-lock-warning-face ((t (:bold t :foreground "Pink"))))
 '(fringe ((t (:background "#222222"))))
 '(highlight ((t (:background "#101010"))))
 '(highlight-indent-face ((t (:background "gray4"))))
 '(hl-line ((t (:background "gray7"))))
 '(jabber-chat-prompt-local ((t (:foreground "medium spring green" :weight bold))))
 '(jabber-roster-user-online ((t (:foreground "deep sky blue" :slant normal :weight bold))))
 '(menu ((t (:foreground "saddle brown"))))
 '(minibuffer-prompt ((t (:bold t :foreground "#ff6600"))))
 '(minimap-font-face ((t (:height 20 :family "DejaVu Sans Mono"))))
 '(mm/master-face ((t (:inverse-video t :weight bold))))
 '(mm/mirror-face ((t (:inverse-video t))))
 '(mode-line ((t (:foreground "#cccccc" :background "#222222" :box nil))))
 '(mode-line-buffer-id ((t (:foreground "#eeeeee" :background "#191919" :box nil))))
 '(mode-line-inactive ((t (:foreground "#a4a4a4" :background "#222222" :box nil))))
 '(modeline-mousable ((t (:background "#444444" :foreground "black"))))
 '(modeline-mousable-minor-mode ((t (:background "#444444" :foreground "black"))))
 '(mouse ((t (:inverse-video t))))
 '(mumamo-border-face-in ((t (:inherit font-lock-preprocessor-face :foreground "orange red" :weight bold))))
 '(mumamo-border-face-out ((t (:inherit font-lock-preprocessor-face :foreground "dark orange" :weight bold))))
 '(primary-selection ((t (:background "#101010"))))
 '(region ((t (:background "#191919"))))
 '(rst-level-1-face ((t (:foreground "DeepPink2"))) t)
 '(rst-level-2-face ((t (:foreground "PaleVioletRed3"))) t)
 '(rst-level-3-face ((t (:foreground "DarkOrchid2"))) t)
 '(secondary-selection ((t (:background "#090909"))))
 '(whitespace-line ((t (:background "gray8" :underline "blue1"))))
 '(whitespace-space ((t (:background "gray5" :foreground "gray20"))))
 '(zmacs-region ((t (:background "#161616")))))
(put 'scroll-left 'disabled nil)
(fset 'yes-or-no-p 'y-or-n-p)
(load "~/.emacs.d/elisp/_init.el")
