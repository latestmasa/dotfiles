(defun other-window-or-split-horizontally ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))

(add-hook 'view-mode-hook
          (lambda ()
            (define-key view-mode-map "n" 'next-line)
            (define-key view-mode-map "p" 'previous-line)
            (define-key view-mode-map "j" 'next-line)
            (define-key view-mode-map "k" 'previous-line)
            (define-key view-mode-map "h" 'backward-char)
            (define-key view-mode-map "l" 'forward-char)
	    (define-key view-mode-map "g" 'beginning-of-buffer)
	    (define-key view-mode-map "G" 'end-of-buffer)
	    (define-key view-mode-map "e" 'end-of-line)
	    (define-key view-mode-map "a" 'beginning-of-line)
	    (define-key view-mode-map "v" 'scroll-up-command)
	    (define-key view-mode-map "f" 'scroll-up-command)
	    (define-key view-mode-map "V" 'scroll-down-command)
	    (define-key view-mode-map "b" 'scroll-down-command)
	    (define-key view-mode-map "o" 'other-window-or-split)
	    (define-key view-mode-map "x" 'delete-window)
	    (define-key view-mode-map "0" 'delete-window)
	    (define-key view-mode-map "1" 'delete-other-windows)
	    (define-key view-mode-map "2" 'other-window-or-split)
	    (define-key view-mode-map "3" 'other-window-or-split-horizontally)
            (define-key view-mode-map "\n" nil)
            (define-key view-mode-map "\r" nil)))

(setq key-chord-two-keys-delay 0.04)
(setq key-chord-one-key-delay 0.15)
(key-chord-mode 1)
(key-chord-define-global "jk" 'view-mode)
