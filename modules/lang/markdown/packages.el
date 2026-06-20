;; -*- no-byte-compile: t; -*-
;;; lang/markdown/packages.el

(package! markdown-mode :pin "1f72cefa6a4b759f90e335e4908725a721b17ad9")
(package! markdown-toc :pin "ab4ba86e627ef83b7eec6706d66b81241c96f48c")

;; Required by `markdown-mode', or it will install it via package.el if it isn't
;; present when you call `markdown-edit-code-block'.
(package! edit-indirect :pin "82a28d8a85277cfe453af464603ea330eae41c05")

(when (and (modulep! +tree-sitter) (treesit-available-p))
  (package! markdown-ts-mode
    :built-in 'prefer  ; Emacs 31+ has a superior markdown-ts-mode
    :pin "801579b9b955f63673dd6dc9742c1fd5311b76c9"))

(when (modulep! +grip)
  (package! grip-mode :pin "6ed3f9739e4a3320ab063f923c00215f7ee5b5cc"))

(when (modulep! :editor evil +everywhere)
  (package! evil-markdown
    :recipe (:host github :repo "Somelauw/evil-markdown")
    :pin "8e6cc68af83914b2fa9fd3a3b8472573dbcef477"))

(when (modulep! :checkers syntax +flymake)
  (package! flymake-markdownlint :pin "59e3520668d9394c573e07b7980a2d48d9f6086c"))
