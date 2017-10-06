;;; inkling-mode.el --- Major mode for editing Inkling files.

;; Author: Nicholas Gorski <nicholas.gorski@bons.ai>
;; Version: 0.1
;; Keywords: inkling

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This is a prototype implementation of a major mode for editing Inkling. It is
;; known to be incomplet and incorrekt - please report any issues or bugs.

;;; Installation:

;; To install, place this file into a directory in your `load-path`.
;; For example, place it in ~/.emacs.d/plugins and edit your ~/.emacs
;; to contain:
;;
;;     (add-to-list 'load-path "~/.emacs.d/plugins")
;;
;; To automatically handle files ending with '.ink', also add:
;;
;;     (require 'inkling-mode)
;;     (add-to-list 'auto-mode-alist '("\\.ink\\'" . inkling-mode))
;;

;;; Code:

;; Comments begin with # and end at the next newline.
(defconst inkling-mode-syntax-table
  (let ((table (make-syntax-table)))
    (modify-syntax-entry ?# "<" table)
    (modify-syntax-entry ?\n ">" table)
    table))

;; These lists were automatically generated. TODO: Make them look pretty.
(setq inkling-keywords '("as" "concept" "configure" "constrain" "action" "copy" "curriculum" "data" "datastore" "debug" "easy" "end" "expect" "experimental" "external" "feeds" "follows" "format" "from" "generator" "hard" "interface" "import" "in" "into" "is" "lesson" "let" "maximize" "medium" "minimize" "objective" "predicts" "schema" "select" "send" "simulator" "state" "stream" "test" "train" "unit" "until" "using" "validate" "where" "with" "yield"))
(setq inkling-types '("Bool" "Byte" "Double" "Float32" "Float64" "Int16" "Int32" "Int64" "Int8" "Luminance" "Matrix" "String" "UInt16" "UInt32" "UInt64" "UInt8"))
(setq inkling-constants '("false" "true"))
(setq inkling-builtin '("classifier" "estimator" "input" "output"))
(setq inkling-functions '())

(setq inkling-keywords-regexp (regexp-opt inkling-keywords 'symbols))
(setq inkling-types-regexp (regexp-opt inkling-types 'symbols))
(setq inkling-constants-regexp (regexp-opt inkling-constants 'symbols))
(setq inkling-builtin-regexp (regexp-opt inkling-builtin 'symbols))
(setq inkling-functions-regexp (regexp-opt inkling-functions 'symbols))

(setq inkling-highlights
      `(
        (,inkling-keywords-regexp . font-lock-keyword-face)
        (,inkling-types-regexp . font-lock-type-face)
        (,inkling-constants-regexp . font-lock-constant-face)
        (,inkling-builtin-regexp . font-lock-builtin-face)
        (,inkling-functions-regexp . font-lock-function-name-face)
        ))

(define-derived-mode inkling-mode prog-mode "Inkling"
  :syntax-table inkling-mode-syntax-table
  (setq font-lock-defaults '(inkling-highlights))
  (font-lock-fontify-buffer))

(provide 'inkling-mode)
