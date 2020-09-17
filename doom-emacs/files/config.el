;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq user-full-name "Ken Van Hoeylandt"
      user-mail-address "")

(setq
 doom-theme 'doom-one
 doom-font (font-spec :family "Source Code Pro" :size 14)
 doom-variable-pitch-font (font-spec :family "Source Code Pro" :size 14)
 doom-big-font (font-spec :family "Source Code Pro" :size 22)
 org-bullets-bullet-list '("·")
 org-directory "~/org/"
 display-line-numbers-type `relative
 display-time-24hr-format t
)

(map! :ne "M-/" #'comment-or-uncomment-region)

(nyan-mode +1)

