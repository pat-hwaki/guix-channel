;;; Copyright © 2023 pat-hwaki
(define-module (guixcn package-variants waylized chat)
 #:use-module (gnu packages qt)
 #:use-module (gnu packages messaging)
 #:use-module (guix packages))

(define-public nheko-wayland
  (package
    (inherit nheko)
    (inputs (modify-inputs (package-inputs nheko)
              (prepend qtwayland-5)))))
