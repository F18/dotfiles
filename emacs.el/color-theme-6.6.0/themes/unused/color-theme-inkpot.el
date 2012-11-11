(eval-when-compile
  (require 'color-theme))

(defun color-theme-inkpot ()
  "Color theme based on the Inkpot theme. Ported and tweaked by Per Vognsen."
  (interactive)
  (color-theme-install
   '(color-theme-inkpot
     ((foreground-color . "#cfbfad")
      (background-color . "#1e1e27")
      (border-color . "#3e3e5e")
      ;;(cursor-color . "#404040")
      (cursor-color . "Violet")
      (mouse-color . "Violet")
      (background-mode . dark))
     (region ((t (:background "#404040"))))
     (highlight ((t (:background "#404040"))))
     (fringe ((t (:background "#16161b"))))
     (show-paren-match-face ((t (:background "#606060"))))
     (isearch ((t (:bold t :foreground "#303030" :background "#cd8b60"))))
     (modeline ((t (:bold t :foreground "#b9b9b9" :background "#3e3e5e"))))
     (modeline-inactive ((t (:foreground "#708090" :background "#3e3e5e"))))
     (modeline-buffer-id ((t (:bold t :foreground "#b9b9b9" :background "#3e3e5e"))))
     (minibuffer-prompt ((t (:bold t :foreground "#708090"))))
     (font-lock-builtin-face ((t (:foreground "#c080d0"))))
     (font-lock-comment-face ((t (:foreground "#cd8b00"))))
     ;;(font-lock-comment-face ((t (:foreground "Firebrick"))))
     (font-lock-constant-face ((t (:foreground "#506dbd"))))
     (font-lock-doc-face ((t (:foreground "#cd8b00"))))
     (font-lock-function-name-face ((t (:foreground "#87cefa"))))
     (font-lock-keyword-face ((t (:italic t :foreground "#c080d0")))) ;; weird workaround for no-bold
     ;;(font-lock-keyword-face ((t (:bold t :foreground "#c080d0")))) ;; original with bolded keywords
     ;;(font-lock-keyword-face ((t (t :foreground "#c080d0"))))
     (font-lock-preprocessor-face ((t (:foreground "309090"))))
     (font-lock-reference-face ((t (:bold t :foreground "#808bed"))))
     ;;(font-lock-string-face ((t (:foreground "#ffcd8b" :background "#404040")))) ;; original 
     (font-lock-string-face ((t (:foreground "Firebrick"))))
     ;;(font-lock-string-face ((t (:foreground "#cd8b00"))))
     (font-lock-type-face ((t (:foreground "#ff8bff"))))
     ;;(font-lock-variable-name-face ((t nil)))
     (font-lock-variable-name-face ((t (:foreground "Cyan"))))
     (font-lock-warning-face ((t (:foreground "#ffffff" :background "#ff0000")))))))
