;; -*- lexical-binding: t -*-

;; Load the Deeper Blue theme
(load-theme 'deeper-blue t)

;; Configure global defaults
(setq inhibit-startup-message t)
(setq evil-want-C-i-jump nil)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
 (package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Download Org-Evil
(unless (package-installed-p 'evil-org)
  (package-install 'evil-org))

;; Enable Evil
(require 'evil)

;; Configure Evil bindings
(evil-set-leader 'normal (kbd "SPC"))
(evil-define-key 'normal 'global (kbd "<leader>oa") 'org-agenda)
(evil-define-key 'normal 'global (kbd "<leader>oc") 'org-capture)

(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Configure Org-mode
(setq org-agenda-files (list "~/Documents/Knowledge/Org/"))
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Documents/Knowledge/Org/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/Documents/Knowledge/Org/journal.org")
        "* %?\n%U\n")))

(setq org-refile-targets
  '((("~/Documents/Knowledge/Org/journal.org") :maxlevel . 2)
    (("~/Documents/Knowledge/Org/life.org") :maxlevel . 2)
    (("~/Documents/Knowledge/Org/reflections.org") :maxlevel . 2)
    (("~/Documents/Knowledge/Org/mindfulness.org") :maxlevel . 2)
    (("~/Documents/Knowledge/Org/woodworking.org") :maxlevel . 2)
    (("~/Documents/Knowledge/Org/work.org") :maxlevel . 2)
    ))

;; Enable Evil-Org & configure it
(require 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)
(evil-org-set-key-theme '(textobjects insert navigation additional calendar heading todo shift))
(require 'evil-org-agenda)
(evil-org-agenda-set-keys)
