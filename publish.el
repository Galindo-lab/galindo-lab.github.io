;; cargar ox
(require 'ox-publish)

(setq org-publish-project-alist
      (list
       (list "my-org-site"
             :recursive t
             :base-directory "./site"
             :publishing-directory "./"
             :exclude "./site/includes/*.org"
             :publishing-function 'org-html-publish-to-html
             )))


(org-publish-all t)

(message "Build complete")
