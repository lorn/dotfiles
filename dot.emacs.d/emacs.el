
(add-to-list 'load-path "~/.libemacs/lib/icicles")
(add-to-list 'load-path "~/.libemacs/lib/")
(autoload 'js2-mode "js2-mode" nil t)
(require 'fuzzy-match)
(require 'synonyms)
(require 'icicles)
(require 'color-theme)
(require 'zenburn)
(require 'epa-file)
(require 'col-highlight)
(require 'myemacs)
(require 'uniquify)
(require 'yasnippet-bundle)
(load "~/.libemacs/lib/haskell-mode/haskell-site-file")
(epa-file-enable)

(when (not (boundp 'ac-dictionary-directories)) (setq ac-dictionary-directories ()))
(add-to-list 'ac-dictionary-directories "~/.libemacs/lib/ac-dict")
(require 'auto-complete-config)
(ac-config-default)

(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-zenburn)))

(set-face-background 'col-highlight zenburn-bg-1)
(set-face-attribute 'mode-line nil :box nil)
(fset 'yes-or-no-p 'y-or-n-p)

(show-paren-mode t)
; (show-ws-toggle-show-hard-spaces)
; (show-ws-toggle-show-tabs)
; (show-ws-toggle-show-trailing-whitespace)

(windmove-default-keybindings 'super)

(speedbar (- 1))
(speedbar-add-supported-extension ".hs")
(speedbar-add-supported-extension ".h")
(speedbar-add-supported-extension ".c")
(speedbar-add-supported-extension ".cc")
(speedbar-add-supported-extension ".py")
(speedbar-add-supported-extension ".pl")
(speedbar-add-supported-extension ".rb")
(speedbar-add-supported-extension ".js")
(speedbar-add-supported-extension ".el")

(setq-default mmm-submode-decoration-level 0)
(setq-default backup-inhibited t)
(setq-default haskell-program-name "ghci \"+.\"")
(setq-default indent-tabs-mode nil)
(setq-default auto-save-default nil)
(setq-default tab-width 4)
(setq-default blink-matching-paren t)
(setq-default inhibit-startup-screen t)
(setq-default modeline-shadow-thickness 0)
(setq-default cua-enable-cua-keys nil)
(setq cua-highlight-region-shift-only t) ;; no transient mark mode
(setq cua-toggle-set-mark nil) ;; original set-mark behavior, i.e. no transient-mark-mode
(setq-default ido-enable-flex-matching t)
(setq-default c-default-style "bsd")
(setq-default c-basic-offset 2)
(setq-default sh-basic-offset 2)
(setq-default sgml-basic-offset 2)
(setq-default comment-multi-line t)
(setq-default mail-from-style 'angles)
(setq-default erc-kill-buffer-on-part t)
(setq-default kill-whole-line t)
(setq-default erc-kill-queries-on-quit t)
(setq-default erc-kill-server-buffer-on-quit t)
(setq-default erc-track-exclude-types (quote ("JOIN" "NICK" "PART" "QUIT" "MODE" "324" "329" "332" "333" "353" "477")))
(setq-default erc-timestamp-right-align-by-pixel t)
(setq-default erc-nick (quote ("Lorn" "Lorn_")))
(setq-default uniquify-buffer-name-style 'post-forward)
(setq-default uniquify-strip-common-suffix nil)
(setq-default ac-auto-show-menu nil)

(col-highlight-set-interval 1)
(toggle-highlight-column-when-idle t)

(size-indication-mode t)
(global-font-lock-mode t)
(global-linum-mode t)
(global-hl-line-mode)
(column-number-mode t)
(transient-mark-mode t)
;(cua-mode t)
;(ido-mode t)
(icy-mode t)
; (tool-bar-mode nil)
; (menu-bar-mode nil)
; (scroll-bar-mode nil)

; (add-hook 'text-mode-hook 'auto-fill-mode t)
(add-hook 'text-mode-hook 'flyspell-mode t)
; (add-hook 'mail-mode-hook 'turn-on-auto-fill)
(add-hook 'mail-mode-hook 'flyspell-mode t)

; (global-set-key (kbd "C-c i") 'ispell-buffer)
; (global-set-key (kbd "C-c a") 'align-string)
(global-set-key (kbd "C-c v") 'view-mode)
(global-set-key (kbd "C-c f") 'icicle-find-file-in-tags-table)
(global-set-key (kbd "C-c s") 'my-open-shell-sideways)
(global-set-key (kbd "C-c w") 'my-copy-line)
(global-set-key (kbd "C-S-a") 'beginning-of-line-text)
(global-set-key (kbd "C-c c") 'describe-char)
(global-set-key (kbd "C-S-o") 'my-prepend-line)
(global-set-key (kbd "C-o") 'my-append-line)
(global-set-key (kbd "S-<f5>") 'flyspell-mode)
(global-set-key (kbd "<f5>") 'ispell-change-dictionary)
(global-set-key (kbd "<f6>") 'whitespace-mode)
(global-set-key (kbd "<f7>") 'toggle-truncate-lines)
(global-set-key (kbd "<f9>") 'speedbar)
(global-set-key (kbd "C-k") 'kill-whole-line)
(global-set-key (kbd "C-S-k") 'kill-line)

(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

(put 'erase-buffer 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(put 'scroll-left 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.t$"  . cperl-mode))

(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t) 
(setq auto-mode-alist (cons '("\\.text" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

(set-face-attribute 'default nil :height 140)

; erlang-mode
(setq load-path (cons  "/usr/local/Cellar/erlang/R1/lib/erlang/lib/tools/emacs"
                       load-path))
(setq erlang-root-dir "/usr/local/Cellar/erlang/")
(setq exec-path (cons "/usr/local/Cellar/erlang/R1/bin" exec-path))
(require 'erlang-start)


(setq org-modules
      '(org-bbdb
        org-gnus
        org-info
        org-jsinfo
        org-irc
        org-w3m
        org-id
        org-habit))
(require 'org-install)

(setq org-directory (expand-file-name "~/org"))

(setq org-todo-keywords
      (quote ((sequence
               "TODO(t)"
               "NEXT(n)"
               "STARTED(s)"
               "|" "DONE(d!/!)" "CANCELLED(c@/!)")
              (sequence "INBOX"))))

(setq org-default-notes-file (concat org-directory "/todo.org"))

(setq org-capture-templates
      (quote
       (("t" "todo" entry (file+headline "todo.org" "inbox")
         "* TODO %?%a\n %U\n"
         :clock-in t
         :clock-resume t))))
(global-set-key (kbd "C-c r") 'org-capture)

(setq org-agenda-custom-commands
      '(("w" "Work Agenda"
         ;; inbox
         ((tags-todo "-TODO=\"INBOX\"+#inbox"
                     ((org-agenda-overriding-header "Inbox")))

          ;; deadlines
          (tags-todo "+DEADLINE<=\"<today>\""
                     ((org-agenda-overriding-header "Late Deadlines")
                      (org-agenda-tags-todo-honor-ignore-options t)
                      (org-agenda-todo-ignore-scheduled t)
                      (org-agenda-todo-ignore-deadlines nil)))

          ;; deadlines
          (tags-todo "+SCHEDULED<=\"<today>\""
                     ((org-agenda-overriding-header "Late Schedule")
                      (org-agenda-tags-todo-honor-ignore-options t)
                      (org-agenda-todo-ignore-scheduled nil)
                      (org-agenda-todo-ignore-deadlines t)))

          ;; waiting
          (tags-todo "+#waiting"
                     ((org-agenda-overriding-header "Waiting")
                      (org-agenda-tags-todo-honor-ignore-options t)
                      (org-agenda-todo-ignore-scheduled t)
                      (org-agenda-todo-ignore-deadlines t)))

          ;; today's schedule
          (agenda "")

          ;; started tasks
          (tags-todo "+TODO=\"STARTED\"-#hold"
                     ((org-agenda-overriding-header "STARTED Actions")
                      (org-agenda-tags-todo-honor-ignore-options t)
                      (org-agenda-todo-ignore-scheduled nil)
                            (org-agenda-todo-ignore-deadlines nil)))

          ;; next tasks
          (tags-todo "+TODO=\"NEXT\"-#hold"
                     ((org-agenda-overriding-header "NEXT Actions")
                      (org-agenda-tags-todo-honor-ignore-options t)
                      (org-agenda-todo-ignore-scheduled t)
                      (org-agenda-todo-ignore-deadlines t)))

          ;; projects
          (tags-todo "-#waiting-TODO=\"INBOX\""
                     ((org-agenda-skip-function 'bh/skip-non-projects)
                      (org-agenda-overriding-header
                        "Projects (< to restrict by project)")))

          ;; backlog
          (tags-todo "+TODO=\"TODO\"-#hold-#inbox"
                     ((org-agenda-overriding-header "Action Backlog")
                      (org-agenda-tags-todo-honor-ignore-options t)
                      (org-agenda-todo-ignore-scheduled t)
                      (org-agenda-todo-ignore-deadlines t))))
         ((org-agenda-filter-preset '("-#hold"))))

      ;; stuck projects revision agenda view
      ("#" "Stuck Projects"

        ;; stuck projects
       ((tags-todo "-#hold"
                   ((org-agenda-skip-function 'bh/skip-non-stuck-projects)
                    (org-agenda-overriding-header "Stuck Projects")))

        ;; action backlog
        (tags-todo "-#hold"
                   ((org-agenda-overriding-header "Action Backlog")))))

      ;; candidate tasks for archiving
      ("A" "Tasks to be Archived" tags "-#hold"
       ((org-agenda-overriding-header "Tasks to Archive")
        (org-agenda-skip-function 'bh/skip-non-archivable-tasks)))

      ;; held items for revision
      ("r" "Review Items" tags-todo "+#hold"
       ((org-agenda-todo-ignore-with-date nil)
        (org-agenda-todo-ignore-scheduled nil)
        (org-agenda-todo-ignore-deadlines nil)))))

(setq org-agenda-ndays 1)

(defun bh/clock-in-to-started (kw)
  "Switch task from TODO or NEXT to STARTED when clocking in.
Skips capture tasks and tasks with subtasks"
  (if (and (member (org-get-todo-state) (list "TODO" "NEXT"))
           (not (and (boundp 'org-capture-mode) org-capture-mode))
           (not (bh/is-project-p-with-open-subtasks)))
      "STARTED"))

;; Change task state to STARTED when clocking in
(setq org-clock-in-switch-to-state 'bh/clock-in-to-started)

(global-set-key "\C-ca" 'org-agenda)

(defun bh/is-project-p ()
  "Any task with a todo keyword subtask"
  (let ((has-subtask)
        (subtree-end (save-excursion (org-end-of-subtree t))))
    (save-excursion
      (forward-line 1)
      (while (and (not has-subtask)
                  (< (point) subtree-end)
                  (re-search-forward "^\*+ " subtree-end t))
        (when (member (org-get-todo-state) org-todo-keywords-1)
          (setq has-subtask t))))
    has-subtask))

(defun bh/is-project-p-with-open-subtasks ()
  "Any task with a todo keyword subtask"
  (let ((has-subtask)
        (subtree-end (save-excursion (org-end-of-subtree t))))
    (save-excursion
      (forward-line 1)
      (while (and (not has-subtask)
                  (< (point) subtree-end)
                  (re-search-forward "^\*+ " subtree-end t))
        (when (and
               (member (org-get-todo-state) org-todo-keywords-1)
               (not (member (org-get-todo-state) org-done-keywords)))
          (setq has-subtask t))))
    has-subtask))

(defun bh/skip-non-projects ()
  "Skip trees that are not projects"
  (let* ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (bh/is-project-p)
        nil
      subtree-end)))

(defun bh/skip-projects ()
  "Skip trees that are projects"
  (let* ((subtree-end (save-excursion (org-end-of-subtree t))))
    (if (bh/is-project-p)
        subtree-end
      nil)))

(defun bh/skip-non-stuck-projects ()
  "Skip trees that are not stuck projects"
  (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
         (has-next (save-excursion
                     (forward-line 1)
                     (and (< (point) subtree-end)
                          (re-search-forward "^\\*+ \\(NEXT\\|STARTED\\) "
                                             subtree-end t)))))
    (if (and (bh/is-project-p) (not has-next))
        nil ; a stuck project, has subtasks but no next task
      subtree-end)))


(defun bh/skip-non-archivable-tasks ()
  "Skip trees that are not available for archiving"
  (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
         (a-month-ago (* 60 60 24 31))
         (last-month (format-time-string
                      "%Y-%m-"
                      (time-subtract (current-time)
                                     (seconds-to-time a-month-ago))))
         (this-month (format-time-string "%Y-%m-" (current-time)))
         (subtree-is-current (save-excursion
                               (forward-line 1)
                               (and (< (point) subtree-end)
                                    (re-search-forward
                                     (concat last-month "\\|" this-month)
                                     subtree-end t)))))
    (if subtree-is-current
        subtree-end ; Has a date in this month or last month, skip it
      nil)))

(if (not (boundp 'ec/org-agenda-export))
    (setq org-agenda-files '("~/org")))

;; Agenda sorting functions
(setq org-agenda-cmp-user-defined 'bh/agenda-sort)

;; Sorting order for tasks on the agenda
(setq org-agenda-sorting-strategy
      (quote ((agenda time-up priority-down habit-up user-defined-up
                      effort-up category-up)
              (todo priority-down category-up)
              (tags priority-down category-up))))

(defun bh/agenda-sort (a b)
  "Sorting strategy for agenda items.
Late deadlines first, then scheduled, then non-late deadlines"
  (let (result num-a num-b)
    (cond
     ; time specific items are already sorted first by org-agenda-sorting-strategy

     ; late deadlines
     ((bh/agenda-sort-test-num 'bh/is-late-deadline '< a b))

     ; deadlines for today
     ((bh/agenda-sort-test 'bh/is-due-deadline a b))

     ; pending deadlines
     ((bh/agenda-sort-test-num 'bh/is-pending-deadline '< a b))

     ; late scheduled items
     ((bh/agenda-sort-test-num 'bh/is-scheduled-late '> a b))

     ; scheduled items for today
     ((bh/agenda-sort-test 'bh/is-scheduled-today a b))

     ; non-deadline and non-scheduled items
     ((bh/agenda-sort-test 'bh/is-not-scheduled-or-deadline a b))

     ; finally default to unsorted
     (t (setq result nil))
     )
    result))

(defmacro bh/agenda-sort-test (fn a b)
  "Test for agenda sort"
  `(cond
    ; if both match leave them unsorted
    ((and (apply ,fn (list ,a))
          (apply ,fn (list ,b)))
     (setq result nil))
    ; if a matches put a first
    ((apply ,fn (list ,a))
     ; if b also matches leave unsorted
     (if (apply ,fn (list ,b))
         (setq result nil)
       (setq result -1)))
    ; otherwise if b matches put b first
    ((apply ,fn (list ,b))
     (setq result 1))
    ; if none match leave them unsorted
    (t nil)))

(defmacro bh/agenda-sort-test-num (fn compfn a b)
  `(cond
    ((apply ,fn (list ,a))
     (setq num-a (string-to-number (match-string 1 ,a)))
     (if (apply ,fn (list ,b))
         (progn
           (setq num-b (string-to-number (match-string 1 ,b)))
           (setq result (if (apply ,compfn (list num-a num-b))
                            -1
                          1)))
       (setq result -1)))
    ((apply ,fn (list ,b))
     (setq result 1))
    (t nil)))

(defun bh/is-not-scheduled-or-deadline (date-str)
  (and (not (bh/is-deadline date-str))
       (not (bh/is-scheduled date-str))))

(defun bh/is-due-deadline (date-str)
  (string-match "Deadline:" date-str))

(defun bh/is-late-deadline (date-str)
  (string-match "In *\\(-.*\\)d\.:" date-str))

(defun bh/is-pending-deadline (date-str)
  (string-match "In \\([^-]*\\)d\.:" date-str))

(defun bh/is-deadline (date-str)
  (or (bh/is-due-deadline date-str)
      (bh/is-late-deadline date-str)
      (bh/is-pending-deadline date-str)))

(defun bh/is-scheduled (date-str)
  (or (bh/is-scheduled-today date-str)
      (bh/is-scheduled-late date-str)))

(defun bh/is-scheduled-today (date-str)
  (string-match "Scheduled:" date-str))

(defun bh/is-scheduled-late (date-str)
  (string-match "Sched\.\\(.*\\)x:" date-str))

(setq org-timeline-show-empty-dates nil)
(setq org-enforce-todo-dependencies t)

(setq org-agenda-dim-blocked-tasks t)

(setq org-agenda-log-mode-items (quote (clock)))

(setq org-agenda-include-diary t)

(setq org-agenda-repeating-timestamp-show-all t)
(setq org-agenda-show-all-dates t)
(setq org-agenda-start-on-weekday nil)
(setq org-agenda-use-time-grid t)

(setq org-agenda-tags-column -102)

(setq org-habit-following-days 7)
(setq org-habit-preceding-days 21)
(setq org-global-properties
             '(("Effort_ALL". "0 0:10 0:30 1:00 2:00 3:00 4:00")))

; allow refiling into up to 5 levels of the headline trees in all org files
(setq org-refile-targets
      (quote ((org-agenda-files :maxlevel . 5) (nil :maxlevel . 5))))

; Targets start with the file name - allows creating level 1 tasks
(setq org-refile-use-outline-path (quote file))

; Targets complete in steps so we start with filename
; TAB shows the next level of targets etc
(setq org-outline-path-complete-in-steps t)
