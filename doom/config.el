(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 16 :height 1.5))

(setq doom-theme 'doom-zenburn)

(setq display-line-numbers-type 'nil)

(setq global-hl-line-modes nil)

;;(add-to-list 'default-frame-alist '(alpha . 90))

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-items 'nil)

(setq evil-normal-state-cursor '(box "#ff335c")
      evil-insert-state-cursor '(box "orange")
      evil-visual-state-cursor '(box "mediumpurple"))

(setq org-emphasis-alist
  '(("*" (bold-italic :foreground "#78c2b3" ))
    ("/" (italic :foreground "#FAB795" ))
    ("_" (:underline t  ))
    ("=" (bold :background "#78c2b3" :foreground "black"))
    ("~" (bold :foreground "#ae81ff" ))
    ("+" ( ))))

(setq org-hide-emphasis-markers t)
(setq company-global-modes '(not text-mode org-mode))

(setq org-modern-list
  '((?+ . "•")
    (?- . "–")
    (?* . "•")))

(setq org-modern-star "⊚⊙⊖⊜⊛")

(custom-set-faces
 '(org-level-1 ((t (:foreground "#ae81ff" :weight normal))))
 '(org-level-2 ((t (:weight normal))))
 '(text-math ((t (:foreground "#fc514e"))))
 '(org-ellipsis ((t (:foreground "#fd9353"))))
 '(org-list-dt ((t (:foreground "#fd9353"))))
 '(org-document-title ((t (:height 1.0 :weight bold))))
 '(org-link ((((class color) (min-colors 88) (background dark)) (:foreground "#78c2b3" :underline t))))
 '(org-block-begin-line ((t (:background nil :extend t))))
 '(org-block ((t (:background nil :extend t))))
 '(org-block-end-line ((t (:background nil :extend t))))
 )

(use-package! olivetti
  :config
  (add-hook 'text-mode-hook 'olivetti-mode 'prog-mode-hook )
  (setq olivetti-body-width 90))

(dolist (f '(prog-mode-hook org-mode-hook text-mode-hook))
 (add-hook f #'olivetti-mode))

(setq org-ellipsis " ▼")

(with-eval-after-load 'org (global-org-modern-mode))

(setq org-roam-directory "~/Documents/roam")

(use-package! org-roam-ui
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

(setq org-file-apps
  '((auto-mode . emacs)
  ("\\.pdf::\\([0-9]+\\)?\\'" . "zathura %s -P %1")
  ("\\.pdf\\'" . "zathura %s")
  (directory . emacs)))

(setq org-journal-dir "~/Documents/roam/journal")
(setq org-journal-date-prefix "#+title: ")
(setq org-journal-time-prefix "* ")
(setq org-journal-date-format "%a, %d-%m-%Y")
(setq org-journal-file-format "%d-%m-%Y.org")

(global-set-key (kbd "C-c c") 'set-chinese-py-input-method)

(defun set-chinese-py-input-method ()
  "Set input method to chinese-py."
  (interactive)
  (set-input-method 'chinese-py))

(global-set-key (kbd "C-c s") 'set-spanish-input-method)

(defun set-spanish-input-method ()
  "Set input method to spanish"
  (interactive)
  (set-input-method 'spanish-prefix))

