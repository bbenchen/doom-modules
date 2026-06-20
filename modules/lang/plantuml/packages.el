;; -*- no-byte-compile: t; -*-
;;; lang/plantuml/packages.el

(package! plantuml-mode :pin "348e83ff193051d5ad332642100dd704f6e2a6d2")
(when (modulep! :checkers syntax)
  (if (modulep! :checkers syntax +flymake)
      (package! flymake-plantuml
        :recipe (:host github :repo "shaohme/flymake-plantuml")
        :pin "9afc6b78e914b31581d6364d81228e8c8b5f4fb8")
    (package! flycheck-plantuml :pin "183be89e1dbba0b38237dd198dff600e0790309d")))

;; ob-plantuml is provided by org-plus-contrib
