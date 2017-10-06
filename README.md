# inkling-mode
Emacs major mode for Inkling.

### Installation

To install, place this file into a directory in your `load-path`. For example,
place it in `~/.emacs.d/plugins` and edit your `~/.emacs` to contain:

```emacs
(add-to-list 'load-path "~/.emacs.d/plugins")
```

To automatically handle files ending with `'.ink'`, also add:

```emacs
(require 'inkling-mode)
(add-to-list 'auto-mode-alist '("\\.ink\\'" . inkling-mode))
```

### Notes

This is a prototype implementation of a major mode for editing Inkling. It is
known to be incomplet and incorrekt - please report any issues or bugs.
