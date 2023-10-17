(eval-when-compile
  (require 'color-theme))

(defun color-theme-ramy-zenburn ()
  "Ramy's theme. A combination of a wheat theme with zenburn background and status bar"
  (interactive)
  (color-theme-install
   '(color-theme-ramy-zenburn
     ((foreground-color . "wheat")
     ;(background-color . "darkslategrey")
      (background-color . "#3F3F3F") ; zenburn background color
      (cursor-color . "Violet")
      (mouse-color . "Violet")
      (background-mode . dark)
      )
     ; RR: the folowing changes the status bar at the bottom
     (mode-line ((t (:foreground "#acbc90" :background "#1e2320"
			  :box (:color "#1e2320" :line-width 2)))))
     (mode-line-inactive ((t (:background "#2e3330" :foreground "#88b090"
					   :box (:color "#2e3330" :line-width 2)))))
     (which-func ((t (:inherit mode-line))))
     )

   )
  )
