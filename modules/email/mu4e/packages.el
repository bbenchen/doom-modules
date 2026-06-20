;; -*- no-byte-compile: t; -*-
;;; email/mu4e/packages.el

(package! mu4e-compat
  :recipe (:host github :repo "bbenchen/mu4e-compat")
  :pin "552e656504756e5ef2eea0475b88070cd2cab540")
(when (modulep! +org)
  (package! org-msg :pin "7b45df759340f3e388e84f497052b7cf3a41698c"))
