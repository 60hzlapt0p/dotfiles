;;; early-init.el --- Emacs 27+ pre-initialisation config

;;; Commentary:

;; Emacs 27+ loads this file before (normally) calling
;; `package-initialize'.  We use this file to suppress that automatic
;; behaviour so that startup is consistent across Emacs versions.

;;; Code:
(setq frame-resize-pixelwise t
      frame-inhibit-implied-resize t
      frame-title-format '("%b")
      ring-bell-function 'ignore
      use-dialog-box t ; only for mouse events, which I seldom use
      use-file-dialog nil
      use-short-answers t
      inhibit-splash-screen t
      inhibit-startup-screen t
      inhibit-x-resources t
      inhibit-startup-echo-area-message user-login-name ; read the docstring
      inhibit-startup-buffer-menu t)

;; I do not use those graphical elements by default, but I do enable
;; them from time-to-time for testing purposes or to demonstrate
;; something.  NEVER tell a beginner to disable any of these.  They
;; are helpful.
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.5)

(defvar prot-emacs--file-name-handler-alist file-name-handler-alist)
(defvar prot-emacs--vc-handled-backends vc-handled-backends)

(setq file-name-handler-alist nil
      vc-handled-backends nil)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 1000 1000 8)
                  gc-cons-percentage 0.1
                  file-name-handler-alist prot-emacs--file-name-handler-alist
                  vc-handled-backends prot-emacs--vc-handled-backends)))

(defun avoid-initial-flash-of-light ()
  (setq mode-line-format nil)

  (set-face-attribute 'default nil :background "#000000" :foreground "white")
  (set-face-attribute 'mode-line nil :background "#000000" :foreground "white" :box 'unspecified
                      ))
(avoid-initial-flash-of-light)


(setq load-prefer-newer noninteractive)
(set-language-environment "UTF-8")
(setq default-input-method nil)


;; Remove command line options that aren't relevant to the current OS; this
;; results in slightly less processing at startup.

(unless (eq system-type 'darwin)
  (setq command-line-ns-option-alist nil))
(unless (eq system-type 'gnu/linux)
  (setq command-line-x-option-alist nil))

;; Reduce rendering/line scan work by not rendering cursors or regions in
;; non-focused windows.
(setq-default cursor-in-non-selected-windows nil)

(setq frame-resize-pixelwise t
      frame-inhibit-implied-resize t
      frame-title-format '("Emacs"))

(setq inhibit-compacting-font-caches t)

(setq package-enable-at-startup nil)

;; So we can detect this having been loaded
(provide 'early-init)

;;; early-init.el ends here
