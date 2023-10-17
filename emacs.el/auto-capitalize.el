;;;; auto-capitalize.el -- Automatically capitalize (or upcase) words.

;;; RCS $Id: auto-capitalize.el,v 2.16 1998/08/06 23:07:13 kevinr Exp $

;;; Description:
;;;
;;; In `auto-capitalize' minor mode, the first word at the beginning of
;;; a paragraph or sentence (i.e. at `left-margin' on a line following
;;; `paragraph-separate', after `paragraph-start' at `left-margin', or
;;; after `sentence-end') is automatically capitalized when a following
;;; whitespace or punctuation character is inserted.
;;;
;;; The `auto-capitalize-words' variable can be customized so that
;;; commonly used proper nouns and acronyms are capitalized or upcased,
;;; respectively.
;;;
;;; The `auto-capitalize-yank' option controls whether words in yanked
;;; text should by capitalized in the same way.
;;;
;;; To install auto-capitalize.el, copy it to a `load-path' directory,
;;; `M-x byte-compile-file' it, and add this to your
;;; site-lisp/default.el or ~/.emacs file:
;;; 	(autoload 'auto-capitalize-mode "auto-capitalize"
;;; 	  "Toggle `auto-capitalize' minor mode in this buffer." t)
;;; 	(autoload 'turn-on-auto-capitalize-mode "auto-capitalize"
;;; 	  "Turn on `auto-capitalize' minor mode in this buffer." t)
;;; 	(autoload 'enable-auto-capitalize-mode "auto-capitalize"
;;; 	  "Enable `auto-capitalize' minor mode in this buffer." t)
;;;
;;; To turn on (unconditional) capitalization in all Text modes, add
;;; this to your site-lisp/default.el or ~/.emacs file:
;;; 	(add-hook 'text-mode-hook 'turn-on-auto-capitalize-mode)
;;; To enable (interactive) capitalization in all Text modes, add this
;;; to your site-lisp/default.el or ~/.emacs file:
;;; 	(add-hook 'text-mode-hook 'enable-auto-capitalize-mode)
;;;
;;; To prevent a word from ever being capitalized or upcased
;;; (e.g. "http"), simply add it (in lowercase) to the
;;; `auto-capitalize-words' list.
;;;
;;; To prevent a word in the `auto-capitalize-words' list from being
;;; capitalized or upcased in a particular context (e.g.
;;; "GNU.emacs.sources"), insert the following whitespace or
;;; punctuation character with `M-x quoted-insert' (e.g. `gnu C-q .').
;;;
;;; To enable contractions based on a word in the
;;; `auto-capitalize-words' list to be capitalized or upcased
;;; (e.g. "I'm") in the middle of a sentence in Text mode, define the
;;; apostrophe as a punctuation character or as a symbol that joins two
;;; words:
;;; 	;; Use "_" instead of "." to define apostrophe as a symbol:
;;; 	(modify-syntax-entry ?' ".   " text-mode-syntax-table) ; was "w   "

;;; Copyright:
;;;
;;; Copyright © 1998 Kevin Rodgers
;;;
;;; This program is free software; you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 2 of the License, or
;;; at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program; if not, write to the Free Software
;;; Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
;;; 02111-1307, USA.
;;;
;;; My employer (Information Handling Services) has not disclaimed any
;;; copyright interest in auto-capitalize.el.
;;;
;;; Kevin Rodgers <kevinr@ihs.com>          Lead Software Engineer
;;; Information Handling Services           Electronic Systems Development
;;; 15 Inverness Way East, M/S A201         GO BUFFS!
;;; Englewood CO 80112-5776 USA             1+ (303) 397-2807[voice]/-2244[fax]

;;; LCD Archive Entry:
;;;
;;; auto-capitalize|Kevin Rodgers|kevinr@ihs.com|
;;; Automatically capitalize the first word of a sentence|
;;; $Date: 1998/08/06 23:07:13 $|$Revision: 2.16 $||

;;; Code:

;; Rationale:
;;
;; The implementation of auto-capitalize via an after-change-function is
;; somewhat complicated, but two simpler designs don't work due to
;; quirks in Emacs' implementation itself:
;;
;; One idea is to advise `self-insert-command' to `upcase'
;; `last-command-char' before it is run, but command_loop_1 optimizes
;; out the call to the Lisp binding with its C binding
;; (Fself_insert_command), which prevents any advice from being run.
;;
;; Another idea is to use a before-change-function to `upcase'
;; `last-command-char', but the change functions are called by
;; internal_self_insert, which has already had `last-command-char'
;; passed to it as a C function parameter by command_loop_1.

;; Package interface:

(provide 'auto-capitalize)

(require 'cl)				; find, minusp

;; User options:

(defvar auto-capitalize nil
  "If non-nil, the first word of a sentence is automatically capitalized.
If non-nil but not t, query the user before capitalizing a word.
This variable automatically becomes buffer-local when set in any fashion\;
see `\\[auto-capitalize-mode]', `\\[turn-on-capitalize-mode]', or
`\\[enable-auto-capitalize-mode]'.")

(make-variable-buffer-local 'auto-capitalize)

(put 'auto-capitalize 'variable-interactive
     "XAutomatically capitalize the first word of each sentence? (t, nil, or 'query): ")

(or (assq 'auto-capitalize minor-mode-alist)
    (setq minor-mode-alist
	  (cons (list 'auto-capitalize " Cap") minor-mode-alist)))

(defvar auto-capitalize-yank nil
  "*If non-nil, the first word of yanked sentences are automatically capitalized.")

(put 'auto-capitalize-yank 'variable-interactive
     "XAutomatically capitalize the first word of yanked sentences? (t or nil): ")

;; User variables:

(defvar auto-capitalize-words '("I")	;  "Stallman" "GNU" "http"
  "If non-nil, a list of proper nouns or acronyms.
If `auto-capitalize' mode is on, these words will be automatically
capitalized or upcased as listed (mixed case is allowable as well), even
in the middle of a sentence.  A lowercase word will not have its case
modified.")

;; Internal variables:

(defconst auto-capitalize-version "$Revision: 2.16 $"
  "This version of auto-capitalize.el")

;; Commands:

(defun auto-capitalize-mode (&optional arg)
  "Toggle `auto-capitalize' minor mode in this buffer.
With optional prefix ARG, turn `auto-capitalize' mode on iff ARG is positive.
This sets `auto-capitalize' to t or nil."
  (interactive "P")
  (setq auto-capitalize
	(if (null arg)
	    (not auto-capitalize)
	  (> (prefix-numeric-value arg) 0))))

(defun turn-on-auto-capitalize-mode ()
  "Turn on `auto-capitalize' mode in this buffer.
This sets `auto-capitalize' to t."
  (interactive)
  (auto-capitalize-mode 1))

(defun enable-auto-capitalize-mode ()
  "Enable `auto-capitalize' mode in this buffer.
This sets `auto-capitalize' to `query'."
  (interactive)
  (setq auto-capitalize 'query))

;; Internal functions:

(defun auto-capitalize (beg end length)
  "If `auto-capitalize' mode is on, then capitalize the previous word.
The previous word is capitalized (or upcased) if it is a member of the
`auto-capitalize-words' list; or if it begins a paragraph or sentence.

Capitalization occurs only if the current command was invoked via a
self-inserting non-word character (e.g. whitespace or punctuation)\; but
if the `auto-capitalize-yank' option is set, then the first word of
yanked sentences will be capitalized as well.

This should be installed as an `after-change-function'."
  (if auto-capitalize
      (cond ((or (and (or (eq this-command 'self-insert-command)
			  ;; LaTeX mode binds "." to TeX-insert-punctuation,
			  ;; and "\"" to TeX-insert-quote:
			  (and (eq (lookup-key global-map (this-command-keys) t)
				   'self-insert-command)
			       ;; single character insertion?
			       (= length 0)
			       (= (- end beg) 1)))
		      (let ((self-insert-char
			     (cond ((fboundp 'event-to-character) ; XEmacs
				    (event-to-character last-command-event
							nil nil t))
				   (t last-command-event)))) ; GNU Emacs
			(not (equal (char-syntax self-insert-char) ?w))))
		 (eq this-command 'newline)
		 (eq this-command 'newline-and-indent))
	     ;; self-inserting, non-word character
	     (if (and (> beg (point-min))
		      (equal (char-syntax (char-after (1- beg))) ?w))
		 ;; preceded by a word character
		 (save-excursion
		   (forward-word -1)
		   (save-match-data
		     (let* ((word-start (point))
			    (text-start
			     (progn
			       (while (or (minusp (skip-chars-backward "\""))
					  (minusp (skip-syntax-backward "\"(")))
				 t)
			       (point)))
			    lowercase-word)
		       (cond ((and auto-capitalize-words
				   (let ((case-fold-search nil))
				     (goto-char word-start)
				     (looking-at
				      (concat "\\("
					      (mapconcat 'downcase
							 auto-capitalize-words
							 "\\|")
					      "\\)\\>"))))
			      ;; user-specified capitalization
			      (if (not (member (setq lowercase-word
						     (buffer-substring ; -no-properties?
						      (match-beginning 1)
						      (match-end 1)))
					       auto-capitalize-words))
				  ;; not preserving lower case
				  (progn ; capitalize!
				    (undo-boundary)
				    (replace-match (find lowercase-word
							 auto-capitalize-words
							 :key 'downcase
							 :test 'string-equal)
						   t t))))
			     ((and (or (equal text-start (point-min)) ; (bobp)
				       (progn ; beginning of paragraph?
					 (goto-char text-start)
					 (and (= (current-column) left-margin)
					      (zerop (forward-line -1))
					      (looking-at paragraph-separate)))
				       (progn ; beginning of paragraph?
					 (goto-char text-start)
					 (and (= (current-column) left-margin)
					      (re-search-backward paragraph-start
								  nil t)
					      (= (match-end 0) text-start)
					      (= (current-column) left-margin)))
				       (progn ; beginning of sentence?
					 (goto-char text-start)
					 (save-restriction
					   (narrow-to-region (point-min)
							     word-start)
					   (and (re-search-backward sentence-end
								    nil t)
						(= (match-end 0) text-start)
						;; verify: preceded by
						;; whitespace?
						(progn
						  (goto-char (1- text-start))
						  ;; In some modes, newline
						  ;; (^J, aka LFD) is comment-
						  ;; end, not whitespace:
						  (looking-at "\n\\|\\s "))))))
				   ;; inserting lowercase text?
				   (let ((case-fold-search nil)
					 (lowercase-letter-regexp
					  (if (featurep 'iso-syntax)
					      "[a-z\340-\366\370-\376]+"
					    "[a-z]+")))
				     (goto-char word-start)
				     (looking-at lowercase-letter-regexp))
				   (or (eq auto-capitalize t)
				       (prog1 (y-or-n-p
					       (format "Capitalize \"%s\"? "
						       (buffer-substring
							(match-beginning 0)
							(match-end 0))))
					 (message ""))))
			      ;; capitalize!
			      (undo-boundary)
			      (goto-char word-start)
			      (capitalize-word 1))))))))
	    ((and auto-capitalize-yank
		  ;; `yank' sets `this-command' to t, and the
		  ;; after-change-functions are run before it has been
		  ;; reset:
		  (or (eq this-command 'yank)
		      (and (= length 0) ; insertion?
			   (eq this-command 't))))
	     (save-excursion
	       (goto-char beg)
	       (save-match-data
		 (while (re-search-forward "\\Sw" end t)
		   ;; recursion!
		   (let* ((this-command 'self-insert-command)
			  (non-word-char (char-after (match-beginning 0)))
			  (last-command-event
			   (cond ((fboundp 'character-to-event) ; XEmacs
				  (character-to-event non-word-char))
				 (t non-word-char)))) ; GNU Emacs
		     (auto-capitalize (match-beginning 0)
				      (match-end 0)
				      0)))))))))

(if (boundp 'after-change-functions)
    (add-hook 'after-change-functions 'auto-capitalize)
  (setq after-change-function 'auto-capitalize))

;;;; auto-capitalize.el ends here
