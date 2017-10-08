#lang racket/base

(require racket/contract/base)

(provide
 (contract-out
  [module-submodule-tree (-> module-path? (treeof module-path?))]))

(define (treeof c) (listof c))

(define (module-submodule-tree mod)
  '())
