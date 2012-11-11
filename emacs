;; -------------------------
;; EMACS INITIALIZATION FILE
;; -------------------------

;; ----------------	 
;; APPEND LOAD PATH
;; ----------------
(defvar *emacs-load-start* (current-time)) ;; used to display emacs start-up time
(setq load-path (cons "~/dotfiles/.emacs.el/" load-path))
;;(add-to-list 'load-path "~/dotfiles/.emacs.el/python-mode-1.0")
(add-to-list 'load-path "~/dotfiles/.emacs.el/color-theme-6.6.0")
(add-to-list 'load-path "~/dotfiles/.emacs.el/yasnippet-0.6.1c")
;;(setq load-path (cons "~/dotfiles/.emacs.el/python-mode-1.0" load-path))
;;(add-to-list 'load-path "~/dotfiles/.emacs.el/EmacsTools/speedbar-0.14beta4")
;;(add-to-list 'load-path "~/emacs-cedet/cedet/common" )
;;;;(add-to-list 'load-path "~/dotfiles/.emacs.el/ecb/semantic-2.0" )
;;;;(add-to-list 'load-path "~/dotfiles/.emacs.el/ecb/speedbar-1.0.2" )
;;(add-to-list 'load-path "~/dotfiles/.emacs.el/ecb/ecb-2.32")
;;(add-to-list 'load-path "~/dotfiles/.emacs.el/EmacsTools/eieio-0.17")
;;(add-to-list 'load-path "~/dotfiles/.emacs.el/EmacsTools/semantic-1.4.4")


;; --------
;; REQUIRES
;; --------
;; RR ;;(require 'cl)                ;; common lisp package
;; RR (require 'paren)             ;; match parentheses
;; RR (require 'redo)	             ;; Enable redo function
;; RR ;;(require 'pycomplete)        ;; Python package
(require 'tabbar)            ;; tabbar
(load-library "yic-buffer")  ;; Library for changing buffers (binds C-x C-p and C-x C-n)
(require 'grep-o-matic)      ;; Library for grepping tools
                              ;; --> Use it by typing M-] and then
                              ;;     M-/ for repositry, M-. for current directory, and M-, for currently opened files
;;RR (require 'f90)               ;; load my customized f90.el
;;RR (require 'fortran)           ;; load my customized fortran.el
(require 'ido)               ;; IDO:
(require 'undo-tree)         ;; load a more sane way to undo/redo (undo-tree)
(require 'vimpulse)          ;; vimpulse automatically loads viper
(require 'viper-in-more-modes)
(require 'color-theme)       ;; color theme (see load path)
(require 'yasnippet)         ;; loads code snippet completions
(require 'column-marker)     ;; highlights a given column
(yas/initialize)
(yas/load-directory "~/dotfiles/.emacs.el/yasnippet-0.6.1c")

;;(require 'printing)          ;; Use the printing package
;;(require 'modeline-posn)
;; emacs code browser:
;;(require 'ecb-autoloads)
;;;;(load-file "~/.emacs-rc-cedet.el")
;;;;(require 'ecb)
;;;;
;;;;(require 'jka-compr)	       ;; Automatically uncompresses and compresses ziped files
;;;;(require 'sams-lib)	       ;; Load sams-lib from "Learn Emacs in 24 hrs" handbook
;;;;(require 'psvn)              ;; Subversion interface


;; ----------------	 
;; GENERAL SETTINGS
;; ----------------
(setq viper-mode t)
(setq inhibit-splash-screen t)          ;; Remove splash screen
(column-number-mode t)        	     	;; Show column as well as line number in status
;;
(setq-default transient-mark-mode t)	;; Visual feedback on selections
(setq search-highlight t)	  	;; Enable highlighting when using search
(setq query-replace-highlight t)	;; Enable highlighting when using search-and-replace
(which-function-mode t)       	     	;; In source code, try to show curr func name
(show-paren-mode t)           	     	;; Highlight matching parentheses
(setq show-paren-style 'parenthesis)
;;(pr-update-menus)                       ;; Update printing menus
;;
;;(setq menu-bar-mode nil)         	     	;; Turn off menu-bar
(setq vc-handled-backends nil)          ;; Turn off version control (makes remote file loading much faster!)
;;(mouse-wheel-mode t)        	     	;; Emacs 21 only - enable scrolling with wheel
(ido-mode t)                            ;; turn on ido mode
(setq ido-enable-flex-matching t)
;; RR (global-undo-tree-mode)

;; -------------------------
;; COLORS, FONTS, AND FRAMES
;; -------------------------
;;(set-default-font "6x13")		;; Can also use "6x12", "6x13","7x13, or "9x15"
;;(set-default-font "lucidasanstypewriter-10")
;;(set-default-font "lucidasanstypewriter-12")
;;(set-default-font "lucidasanstypewriter-12")
;;(set-default-font "inconsolata-10")
;;(set-default-font "monospace-8")
(set-default-font "consolas-11")
;;(set-frame-height (selected-frame) 60)
;;(set-frame-width (selected-frame) 115)
;; ---- Wheat Theme ----
;;(set-background-color "DarkSlateGrey")
;;(set-foreground-color "Wheat")
;;(set-mouse-color "Violet")
;;(set-border-color "white")
;;(set-cursor-color "Violet")

;; ---- Zenburn-based Theme ----
(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-zenburn)
;(color-theme-ramy-zenburn)
;(color-theme-ramy-wheat)

;;(setq font-lock-string-face "Firebrick")
;(color-theme-inkpot)
;(setq default-frame-alist '((cursor-type . (bar . 3)))) ;; Change the cursor to a bar

;; ---------------
;; GLOBAL SET KEYS
;; ---------------
(global-set-key [(control prior)] 'bury-buffer)    	;; Ctrl-PgUp for previous buffer
(global-set-key [(control next)] 'yic-next-buffer) 	;; Ctrl-PgDown for next open buffer
;;
(global-set-key [(f5)] 'undo)
(global-set-key [(shift f5)] 'redo)
;;
(global-set-key [(f6)] 'ecb-activate)
(global-set-key [(C-f6)] 'ecb-deactivate)
;;
(global-set-key [(f7)] 'grep-optima) 
;;(global-set-key [(C-f7)] 'grep-src2D)
;;(global-set-key [(f7)] 'grep-src3D) 
;;
(global-set-key [(f8)] 'grep-o-matic-repository)
;;(global-set-key [(C-f8)] 'grep-o-matic-repository-src2D)
;;(global-set-key [(f8)] 'grep-o-matic-repository-src3D)
;;
(global-set-key [(C-f9)] 'euler3Dpolytropic-compile)
(global-set-key [(S-f9)] 'euler3Dpolytropic-compile-no-profiling)
;;
;;(global-set-key [(C-f10)] 'navierstokes3Dpolytropic-compile)
;;(global-set-key [(S-f10)] 'navierstokes3Dpolytropic-compile-no-profiling)
(global-set-key [(C-f10)] 'compile-mybeamer)
;;
(global-set-key [(C-f11)] 'les3Dpolytropic-compile)
(global-set-key [(S-f11)] 'les3Dpolytropic-compile-no-profiling)
;;
(global-set-key [(C-f12)] 'compile-mylatex3)
;;
(global-set-key [f11] 'fullscreen)

;;
;;
(global-set-key [(meta g)] 'goto-line)		      	;; Enable moving to a line specified by a number
(global-set-key [(meta left)] 'backward-sexp)		;; find matching start brace
(global-set-key [(meta right)] 'forward-sexp)		;; find matching end brace
(global-set-key [(control c) (f)] 'find-grep)
;;
(global-set-key [(meta s)] 'speedbar-get-focus)
(global-set-key [(meta j)] (lambda () (interactive) (scroll-up 30)))
(global-set-key [(meta k)] (lambda () (interactive) (scroll-down 30)))
(global-set-key [(meta ,)] (lambda () (interactive) (scroll-up 30)))
(global-set-key [(meta .)] (lambda () (interactive) (scroll-down 30)))
(global-set-key [(control c) (m)] 'fortran-indent-line)
;; latex
(global-set-key (kbd "M-Q") 'remove-hard-wrap-paragraph)
;; tabbar 
(tabbar-mode) ;comment out this line to start without the tab on top
(global-set-key [(control shift h)] 'tabbar-mode)
(global-set-key [(control shift up)] 'tabbar-backward-group)
(global-set-key [(control shift down)] 'tabbar-forward-group)
(global-set-key [(control <)] 'tabbar-backward)
(global-set-key [(control >)] 'tabbar-forward)
;; ido: switch to buffer shortcut
(global-set-key [ (meta c)] 'ido-switch-buffer)
;; fortran commenting
(global-set-key [(control -)] 'fortran-comment-region) 
(global-set-key [(control shift -)] 'comment-region) 
(global-set-key [(control =)] 'uncomment-region)
(global-set-key [(control c) (m)] 'column-marker-1)
(global-set-key [(control <)] 'tabbar-backward)
(global-set-key [(control >)] 'tabbar-forward)
;;(global-set-key [(control \')] 'flyspell-goto-next-error)
;;(global-set-key [(control \])] 'flyspell-auto-correct-word)
;; The following key bindings are for the Emacs Code Browser (ECB)
;;(global-set-key [(control c) (e)] 'ecb-goto-window-edit1)
;;(global-set-key [(control c) (r)] 'ecb-goto-window-edit2)
;;(global-set-key [(control c) (a)] 'ecb-goto-window-analyse)
;;(global-set-key [(control c) (g)] 'ecb-goto-window-compilation)
;;(global-set-key [(control c) (d)] 'ecb-goto-window-methods)
;;(global-set-key [(control c) (h)] 'ecb-goto-window-history)
;;(global-set-key [(control c) (a)] 'ecb-goto-window-directories)
;;(global-set-key [(control c) (s)] 'ecb-goto-window-history)
;;(global-set-key [(control c) (w)] 'ecb-redraw-layout)
;;(global-set-key [(control c) (u)] 'ecb-update-directories-buffer)
;;(global-set-key [(control c) (c)] 'ecb-grep-find-directory)
;; --------------------
;; CUSTOM SET VARIABLES
;; --------------------
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(add-hook (quote semantic-init-hooks) t)
 '(auto-save-default nil)
 '(case-fold-search t)
 '(compilation-scroll-output t)
 '(compilation-window-height 15)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(current-language-environment "English")
 '(display-time-24hr-format t)
 '(display-time-mode t nil (time))
;; '(ecb-auto-update-methods-after-save nil)
;; '(ecb-directories-update-speedbar nil)
;; '(ecb-layout-name "left14")
;; '(ecb-layout-window-sizes (quote (("left14" (0.13553113553113552 . 0.5822784810126582) (0.13553113553113552 . 0.4050632911392405)) ("my-leftright" (0.12875536480686695 . 0.5833333333333334) (0.12875536480686695 . 0.4027777777777778) (0.14163090128755365 . 0.9861111111111112)) ("left7" (0.18803418803418803 . 0.3157894736842105) (0.18803418803418803 . 0.17105263157894737) (0.18803418803418803 . 0.5)))))
;; '(ecb-options-version "2.32")
;; '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
;; '(ecb-show-sources-in-directories-buffer (quote ("left7" "left13" "left14" "left15" "my-own-leftright" "my-leftright")))
;; '(ecb-show-tags (quote ((default (include collapsed nil) (parent collapsed nil) (type flattened nil) (variable collapsed access) (function flattened access) (label hidden nil) (t collapsed nil)) (c++-mode (include collapsed nil) (parent collapsed nil) (type flattened nil) (variable collapsed access) (function flattened nil) (function collapsed nil) (label hidden nil) (t collapsed nil)) (c-mode (include collapsed nil) (parent collapsed nil) (type flattened nil) (variable collapsed access) (function flattened access) (function collapsed access) (label hidden nil) (t collapsed nil)) (bovine-grammar-mode (keyword collapsed name) (token collapsed name) (nonterminal flattened name) (rule flattened name) (t collapsed nil)) (wisent-grammar-mode (keyword collapsed name) (token collapsed name) (nonterminal flattened name) (rule flattened name) (t collapsed nil)) (texinfo-mode (section flattened nil) (def collapsed name) (t collapsed nil)))))
;; '(ecb-source-path (quote ("~/CFFC" "~/03_hpacf/ramy/CFFC/itanium_CFFC/" "~/01_thesis/MASc" ("/" "/"))))
;; '(ecb-tag-header-face (quote ecb-method-face))
;; '(ecb-tip-of-the-day nil)
;; '(ecb-tree-indent 1)
 '(flyspell-sort-corrections nil)
 '(fortran-blink-match t)
 '(fortran-blink-matching-do t)
 '(fortran-blink-matching-if t)
 '(fortran-comment-indent-style (quote relative))
 '(fortran-comment-line-start "!")
 '(fortran-comment-line-start-skip "^[Cc*]\\(\\([^ 	
]\\)\\2+\\)?[ 	]*")
 '(fortran-comment-region "!")
 '(fortran-continuation-string "&")
 '(global-font-lock-mode t nil (font-lock))
 '(global-semanticdb-minor-mode 1)
 '(grep-find-command "find . -type f -not -name \"*~\" -and -not -name \"*#\" -and -not -name \"*.o\" -and -not -name \"*.d\" -not -name \"*.cache\" -print0 | xargs -0 -e grep -n -s -F   ")
 '(grep-o-matic-repository-root-function nil)
 '(grep-window-height 15)
 '(menu-bar-mode nil)
 '(next-screen-context-lines 10)
 '(scroll-bar-mode (quote right))
 '(scroll-preserve-screen-position 1)
 '(set-cursor-color "Violet")
 '(setq semanticdb-project-roots)
 '(show-paren-mode t nil (paren))
 '(speedbar-default-position (quote left))
 '(speedbar-frame-parameters (quote ((minibuffer) (width . 26) (border-width . 0) (menu-bar-lines . 0) (tool-bar-lines . 0) (unsplittable . t) (left-fringe . 0))))
 '(speedbar-sort-tags nil)
 '(speedbar-supported-extension-expressions (quote (".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".f\\(90\\|77\\|or\\)?" ".inc")))
 '(speedbar-tag-hierarchy-method (quote (speedbar-trim-words-tag-hierarchy)))
 '(speedbar-use-imenu-flag nil)
 '(tool-bar-mode nil)
 '(truncate-partial-width-windows nil)
 '(version-control (quote never)))
;; '(vimpulse-experimental nil)
;; '(viper-ESC-moves-cursor-back t)
;; '(viper-auto-indent t)
;; '(viper-case-fold-search t)
;; '(viper-ex-style-editing nil)
;; '(viper-insert-state-cursor-color Green)
;; '(viper-re-search t)
;; '(viper-toggle-key [(control 59)])
;; '(viper-want-ctl-h-help t)
;; ----------------
;; CUSTOM SET FACES
;; ----------------
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ediff-even-diff-Ancestor ((((class color) (min-colors 16)) (:background "Grey" :foreground "Red"))))
 '(ediff-even-diff-B ((((class color) (min-colors 16)) (:background "Grey" :foreground "blue"))))
 '(ediff-even-diff-C ((((class color) (min-colors 16)) (:background "light grey" :foreground "Magenta"))))
 '(ediff-odd-diff-A ((((class color) (min-colors 16)) (:background "Grey" :foreground "Black"))))
 '(ediff-odd-diff-B ((((class color) (min-colors 16)) (:background "light grey" :foreground "Blue"))))
 '(ediff-odd-diff-C ((((class color) (min-colors 16)) (:background "Grey" :foreground "Magenta"))))
 '(font-lock-comment-face ((t (:inherit font-lock-comment :slant italic))))
 '(vline ((t (:background "steelblue" :foreground "*"))))
 '(vline-visual ((t (:background "black")))))

;; --------------------
;; TABBAR MODE SETTINGS
;; --------------------
(defun tabbar-buffer-groups (buffer)
   "Return the list of group names BUFFER belongs to.
 Return only one group for each buffer."
   (with-current-buffer (get-buffer buffer)
     (cond
      ((string-equal "*" (substring (buffer-name) 0 1))
       '("Emacs Buffer"))
      ((eq major-mode 'dired-mode)
       '("Dired"))
      (t
       '("User Buffer"))
      )))

;; -----------------
;; PROGRAMMING MODES
;; -----------------
;; Indentation Stuff
(defun my-c-setup ()
  (setq c-basic-offset 2)
)
(add-hook 'c-mode-common-hook 'my-c-setup)
;; C language
(add-hook 'c-mode-common-hook 'my-c-setup)
;; Fortran language
;; Highlight columns in fortran mode
(add-hook 'fortran-mode-hook (lambda () (interactive) (column-marker-2 72)))
(add-hook 'fortran-mode-hook (lambda () (interactive) (column-marker-1 6)))
;;(add-hook 'fortran-mode-hook
;;      (lambda () (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))
(add-hook 'f90-mode-hook
      (lambda () (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))

;;----------------------------------------------------------------------------
;; Tabbar Settings - group buffers by directory
;;----------------------------------------------------------------------------
(setq tabbar-buffer-groups-function 
     (lambda (buffer) 
   "Put all files in the same directory into the same tab bar" 
   (with-current-buffer (get-buffer buffer) 
     (let ((dir (expand-file-name default-directory))) 
       (cond ((member (buffer-name) '("*Completions*" 
                                      "*scratch*" 
                                      "*Messages*" 
                                      "*Ediff Registry*")) 
              (list "#misc")) 
             ((string-match-p "/.emacs.d/" dir) 
              (list ".emacs.d")) 
             (t (list dir))))))) 


;;----------------------------------------------------------------------------
;; Syntax Highlighting
;;----------------------------------------------------------------------------

;; C, C++ syntax colouring
(global-font-lock-mode t)
(setq font-lock-maximum-decoration
	'((c-mode . 3) (c++-mode . 3)))

;;(setq c-style-alist "stroustrup")  

;; python mode suff (taken from http://www.python.org/emacs/python-mode/installation.html)
(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode)
	    interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)



;; Matlab mode
(autoload 'matlab-mode "matlab" "Enter Matlab mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)
(defun my-matlab-mode-hook () (setq fill-column 79)) ;; where auto-fill should wrap
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)

;; html-helper-mode
(autoload 'html-helper-mode "~/dotfiles/.emacs.el/html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))
(global-set-key [(f1)] (lambda () (interactive) (manual-entry (current-word))))

;;----------------------------------------------------------------------------
;;latex
;;----------------------------------------------------------------------------
(defun my-latex-mode-hook () 
  (setq fill-column 92)
  (call-interactively 'flyspell-mode t)
  (call-interactively 'auto-fill-mode t)
  (call-interactively 'flyspell-correct-word/local-keymap nil)
)
(add-hook 'latex-mode-hook 'my-latex-mode-hook)
(add-hook 'LaTeX-mode-hook 'my-latex-mode-hook)

;; Count words in a TeX text
(defun latex-word-count (start end)
  "Count lines/words/characters from START to END. Replacement for count-lines-region."
  (interactive "r")
  (let ((ost (syntax-table)) (nst (copy-syntax-table)))
    (modify-syntax-entry ?_ "w" nst)
    (modify-syntax-entry ?- "w" nst)
    (save-excursion
      (save-restriction
        (narrow-to-region start end)
        (goto-char (min start end))
        (unwind-protect
	    (progn (set-syntax-table nst)
                    (message 
		     "Region (%d to %d) has: lines: %d; words: %d; characters: %d."
		     start end (count-lines start end)
		     (string-to-number (how-many "\\<")) ;(how-many "\\<[^\\]"))
	  (- end start)))
      (set-syntax-table ost)))))) ;(how-many "\\<") ; (how-many "\\<[^\\]")
(define-key esc-map "=" 'latex-word-count) ; was count-line-region

(defun count-words (&optional begin end)
  "count words between BEGIN and END (region); if no region defined, count words in buffer"
  (interactive "r")
  (let ((b (if mark-active begin (point-min)))
      (e (if mark-active end (point-max))))
    (message "Word count: %s" (how-many "\\w+" b e))))

;;----------------------------------------------------------------------------
;; Set auto-mode-alist
;;----------------------------------------------------------------------------
(setq auto-mode-alist
      '(("\\.[Cc][Oo][Mm]\\'" . text-mode)
        ("\\.bat\\'" . bat-generic-mode)
        ("\\.inf\\'" . inf-generic-mode)
        ("\\.rc\\'" . rc-generic-mode)
        ("\\.reg\\'" . reg-generic-mode)
        ("\\.cob\\'" . cobol-mode)
        ("\\.cbl\\'" . cobol-mode)
        ("\\.te?xt\\'" . text-mode)
        ("\\.c\\'" . c-mode)
        ("\\.h\\'" . c++-mode)
        ("\\.tex$" . LaTeX-mode)
        ("\\.sty$" . LaTeX-mode)
        ("\\.bbl$" . LaTeX-mode)
	("\\.py\\'" . python-mode)
	;;("\\.bib$" . LaTeX-mode)
         ("\\.bib$" . bibtex-mode)
        ("\\.el\\'" . emacs-lisp-mode)
        ("\\.scm\\'" . scheme-mode)
        ("\\.l\\'" . lisp-mode)
        ("\\.lisp\\'" . lisp-mode)
        ("\\.f\\'" . fortran-mode)
        ("\\.F\\'" . fortran-mode)
        ("\\.for\\'" . fortran-mode)
        ("\\.inc\\'" . fortran-mode)
        ("\\.inp\\'" . f90-mode)
        ("\\.opt\\'" . f90-mode)
        ("\\.p\\'" . pascal-mode)
        ("\\.pas\\'" . pascal-mode)
        ("\\.ad[abs]\\'" . ada-mode)
        ("\\.\\([pP][Llm]\\|al\\)\\'" . perl-mode)
        ("\\.s?html?\\'" . html-helper-mode)
        ("\\.idl\\'" . c++-mode)
        ("\\.cc\\'" . c++-mode)
        ("\\.hh\\'" . c++-mode)
        ("\\.hpp\\'" . c++-mode)
        ("\\.C\\'" . c++-mode)
        ("\\.H\\'" . c++-mode)
        ("\\.cpp\\'" . c++-mode)
        ("\\.[cC][xX][xX]\\'" . c++-mode)
        ("\\.hxx\\'" . c++-mode)
        ("\\.c\\+\\+\\'" . c++-mode)
        ("\\.h\\+\\+\\'" . c++-mode)
        ;;("\\.m\\'" . objc-mode)
	("\\.m\\'" . matlab-mode)
        ("\\.java\\'" . java-mode)
        ("\\.ma?k\\'" . makefile-mode)
        ("\\(M\\|m\\|GNUm\\)akefile\\(\\.in\\)?" . makefile-mode)
        ("\\.am\\'" . makefile-mode)
        ("\\.mms\\'" . makefile-mode)
        ("\\.texinfo\\'" . texinfo-mode)
        ("\\.te?xi\\'" . texinfo-mode)
        ("\\.s\\'" . asm-mode)
        ("\\.S\\'" . asm-mode)
        ("\\.asm\\'" . asm-mode)
        ("ChangeLog\\'" . change-log-mode)
        ("change\\.log\\'" . change-log-mode)
        ("changelo\\'" . change-log-mode)
        ("ChangeLog\\.[0-9]+\\'" . change-log-mode)
        ("changelog\\'" . change-log-mode)
        ("changelog\\.[0-9]+\\'" . change-log-mode)
        ("\\$CHANGE_LOG\\$\\.TXT" . change-log-mode)
        ("\\.scm\\.[0-9]*\\'" . scheme-mode)
        ("\\.[ck]?sh\\'\\|\\.shar\\'\\|/\\.z?profile\\'" . sh-mode)
        ("\\(/\\|\\`\\)\\.\\(bash_profile\\|z?login\\|bash_login\\|z?logout\\)\\'" . sh-mode)
        ("\\(/\\|\\`\\)\\.\\(bash_logout\\|[kz]shrc\\|bashrc\\|t?cshrc\\|esrc\\)\\'" . sh-mode)
        ("\\(/\\|\\`\\)\\.\\([kz]shenv\\|xinitrc\\|startxrc\\|xsession\\)\\'" . sh-mode)
        ("\\.mm\\'" . nroff-mode)
        ("\\.me\\'" . nroff-mode)
        ("\\.ms\\'" . nroff-mode)
        ("\\.man\\'" . nroff-mode)
        ("\\.[12345678]\\'" . nroff-mode)
        ("\\.TeX\\'" . TeX-mode)
        ("\\.sty\\'" . LaTeX-mode)
        ("\\.cls\\'" . LaTeX-mode)
        ("\\.clo\\'" . LaTeX-mode)
        ("\\.bbl\\'" . LaTeX-mode)
        ("\\.bib\\'" . BibTeX-mode)
       ;; ("\\.m4\\'" . m4-mode)
       ;; ("\\.mc\\'" . m4-mode)
       ;; ("\\.mf\\'" . metafont-mode)
       ;; ("\\.mp\\'" . metapost-mode)
        ("\\.vhdl?\\'" . vhdl-mode)
        ("\\.article\\'" . text-mode)
        ("\\.letter\\'" . text-mode)
        ("\\.tcl\\'" . tcl-mode)
        ("\\.exp\\'" . tcl-mode)
        ("\\.itcl\\'" . tcl-mode)
        ("\\.itk\\'" . tcl-mode)
        ("\\.icn\\'" . icon-mode)
        ("\\.sim\\'" . simula-mode)
        ("\\.mss\\'" . scribe-mode)
        ("\\.f90\\'" . f90-mode)
        ("\\.lsp\\'" . lisp-mode)
        ("\\.awk\\'" . awk-mode)
        ("\\.prolog\\'" . prolog-mode)
        ("\\.tar\\'" . tar-mode)
        ("\\.\\(arc\\|zip\\|lzh\\|zoo\\|jar\\)\\'" . archive-mode)
        ("\\.\\(ARC\\|ZIP\\|LZH\\|ZOO\\|JAR\\)\\'" . archive-mode)
        ("\\`/tmp/Re" . text-mode)
        ("/Message[0-9]*\\'" . text-mode)
        ("/drafts/[0-9]+\\'" . mh-letter-mode)
        ("\\.zone\\'" . zone-mode)
        ("\\`/tmp/fol/" . text-mode)
        ("\\.y\\'" . c-mode)
        ("\\.lex\\'" . c-mode)
        ("\\.oak\\'" . scheme-mode)
        ("\\.sgml?\\'" . sgml-mode)
        ("\\.xml\\'" . sgml-mode)
        ("\\.dtd\\'" . sgml-mode)
        ("\\.ds\\(ss\\)?l\\'" . dsssl-mode)
        ("\\.idl\\'" . c++-mode)
        ("[]>:/\\]\\..*emacs\\'" . emacs-lisp-mode)
        ("\\`\\..*emacs\\'" . emacs-lisp-mode)
        ("[:/]_emacs\\'" . emacs-lisp-mode)
        ("\\.ml\\'" . lisp-mode)))
;;        ("\\.in\\'" . sh-mode)))
;; CFDkit
(setq auto-mode-alist (cons '("\\.in\\'" . sh-mode) auto-mode-alist))

;; ----------------------------------------------------------------
;; Autosave, Cache, and Backup File Save Locations (great for sshfs)
;; ----------------------------------------------------------------
;; The following will put the autosave files (i.e. #foo.h#), the "semantic.cache" files,
;; and the backup files (i.e. foo.h~) in the desired loaction, as specified by the defvar's below
(defvar autosave-dir (concat "~/tmp/"))
(setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,(concat autosave-dir "\\1") t)))
;;(setq semanticdb-default-save-directory "~/tmp/")
;;(defvar backup-dir (concat "~/tmp/"))
;;(setq backup-directory-alist (list (cons "." backup-dir)))

;; -------------------------
;; MACROS AND LISP FUNCTIONS
;; -------------------------

;; -------------------------------------------------
;; FUNCTION: Showing matching parentheses 
;; -------------------------------------------------
(defadvice show-paren-function (after show-matching-paren-offscreen
                                      activate)
  "If the matching paren is offscreen, show the matching line in the                               
echo area. Has no effect if the character before point is not of                                   
the syntax class ')'."
  (interactive)
  (let ((matching-text nil))
    ;; Only call `blink-matching-open' if the character before point                               
    ;; is a close parentheses type character. Otherwise, there's not                               
    ;; really any point, and `blink-matching-open' would just echo                                 
    ;; "Mismatched parentheses", which gets really annoying.                                       
    (if (char-equal (char-syntax (char-before (point))) ?\))
        (setq matching-text (blink-matching-open)))
    (if (not (null matching-text))
        (message matching-text))))

;;-------------------------------
;; MACRO (F11): Toggle Fullscreen
;;-------------------------------
(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))

;; ------------------------------------------
;; MACRO (M-Q, M-x): Line Wrapping Functions
;; ------------------------------------------
;; Used to turn on line wrapping as desired:
;; M-q to fill paragraph of M-x fill-region to reformat a region of selected text

(defun remove-hard-wrap-paragraph () 
  "Replace newline chars in current paragraph by single spaces."
  (interactive) 
  (let ((fill-column 90002000)) 
    (fill-paragraph nil)))
(defun remove-hard-wrap-region (start end)
  "Replace newline chars in region by single spaces." 
  (interactive "r")
  (let ((fill-column 90002000)) 
    (fill-region start end)))

;; --------------------------------------------------------------
;; MACRO: First change directories to optima then grep
;; --------------------------------------------------------------
(defun grep-optima ()
  (interactive)
  (setq default-directory "~/optima/")
  (setq saved-default-directory default-directory)
  (setq default-directory saved-default-directory)
  (call-interactively 'grep-find))


;; --------------------------------------------------------------
;; MACRO: First change directories to CFFC/src_3D/ then grep
;; --------------------------------------------------------------
(defun grep-src3D ()
  (interactive)
  (setq default-directory "~/CFFC/src_3D/")
  (setq saved-default-directory default-directory)
  (setq default-directory saved-default-directory)
  (call-interactively 'grep-find))

;; --------------------------------------------------------------
;; MACRO: First change directories to CFFC/src_3D/ then grep
;; --------------------------------------------------------------
(defun grep-src2D ()
  (interactive)
  (setq default-directory "~/CFFC/src_2D/")
  (setq saved-default-directory default-directory)
  (setq default-directory saved-default-directory)
  (call-interactively 'grep-find))

;; ----------------------------------------------
;; MACRO: Compile euler3Dpolytropic in emacs 
;; ----------------------------------------------
(defun euler3Dpolytropic-compile ()
  (interactive)
  (setq default-directory "~/CFFC/src_3D/")
  (setq compile-command "LC_ALL=ascii make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compile-command "make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

;; ----------------------------------------------
;; MACRO: Compile euler3Dpolytropic in emacs 
;; ----------------------------------------------
(defun euler3Dpolytropic-compile-no-profiling ()
  (interactive)
  (setq default-directory "~/CFFC/src_3D/")
  ;;(setq compile-command "LC_ALL=ascii make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compile-command "make euler3Dpolytropic")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

;; ----------------------------------------------
;; MACRO: Compile navierstokes3Dpolytropic in emacs 
;; ----------------------------------------------
(defun navierstokes3Dpolytropic-compile ()
  (interactive)
  (setq default-directory "~/CFFC/src_3D/")
  (setq compile-command "LC_ALL=ascii make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compile-command "make navierstokes3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

;; ----------------------------------------------
;; MACRO: Compile navierstokes3Dpolytropic in emacs 
;; ----------------------------------------------
(defun navierstokes3Dpolytropic-compile-no-profiling ()
  (interactive)
  (setq default-directory "~/CFFC/src_3D/")
  ;;(setq compile-command "LC_ALL=ascii make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compile-command "make navierstokes3Dpolytropic")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

;; ----------------------------------------------
;; MACRO: Compile les3Dpolytropic in emacs 
;; ----------------------------------------------
(defun les3Dpolytropic-compile ()
  (interactive)
  (setq default-directory "~/CFFC/src_3D/")
  ;;(setq compile-command "LC_ALL=ascii make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compile-command "make les3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

;; ----------------------------------------------
;; MACRO: Compile les3Dpolytropic in emacs 
;; ----------------------------------------------
(defun les3Dpolytropic-compile-no-profiling ()
  (interactive)
  (setq default-directory "~/CFFC/src_3D/")
  ;;(setq compile-command "LC_ALL=ascii make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compile-command "make les3Dpolytropic")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

;; ----------------------------------------------
;; MACRO: Compile euler3Dpolytropic in emacs 
;; ----------------------------------------------
(defun compile-make-clean ()
  (interactive)
  (setq default-directory "~/CFFC/src_3D/")
  ;;(setq compile-command "LC_ALL=ascii make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compile-command "make clean")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

;; ----------------------------------------------
;; MACRO: Compile euler3Dpolytropic in emacs 
;; ----------------------------------------------
(defun compile-mylatex ()
  (interactive)
  (setq default-directory "~/01_thesis/DECs/dec1/report/")
  ;;(setq compile-command "LC_ALL=ascii make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compile-command "make")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

;; ----------------------------------------------
;; MACRO: Make for Latex Report
;; ----------------------------------------------
(defun compile-mylatex3 ()
  (interactive)
  ;;(setq default-directory "~/02_courses/09_Propulsion/01_Assignment/report/")
  (setq default-directory "~/02_courses/09_Propulsion/02_Assignment/report/")
  ;;(setq compile-command "make DEPEND=DONE again")
  (setq compile-command "make")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

;; ----------------------------------------------
;; MACRO: Compile euler3Dpolytropic in emacs 
;; ----------------------------------------------
(defun compile-mybeamer ()
  (interactive)
  (setq default-directory "~/01_thesis/MASc/presentation/")
  ;;(setq compile-command "LC_ALL=ascii make euler3Dpolytropic PROFILING=ON DEBUGING=ON")
  (setq compile-command "make all")
  (setq compilation-read-command nil)
  (call-interactively 'compile)
  (setq compilation-read-command t))

(message "My .emacs loaded in %ds" (destructuring-bind (hi lo ms) (current-time)
                             (- (+ hi lo) (+ (first *emacs-load-start*) (second
                             *emacs-load-start*)))))
