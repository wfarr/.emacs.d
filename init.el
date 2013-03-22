(setq inhibit-startup-screen 't)
(setq visible-bell t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(run-with-idle-timer 0.01 nil 'ns-toggle-fullscreen)

(redraw-display)

(load-theme 'tango-dark)
(enable-theme 'tango-dark)

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    ack
    coffee-mode
    css-mode
    eldoc
    etags
    js2-mode
    json
    make-mode
    org
    puppet-mode
    ruby-mode
    ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(ido-mode)
(setq ido-enable-flex-matching t)


;; hello world


