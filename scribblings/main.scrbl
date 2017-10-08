#lang scribble/manual

@(require scribble/example)

@(define github-url "https://github.com/jackfirth/racket-module-search")
@(define license-url
   "https://github.com/jackfirth/racket-module-search/blob/master/LICENSE")

@title{Module Searching}
@defmodule[module-search #:packages ("module-search")]
@author[@author+email["Jack Firth" "jackhfirth@gmail.com"]]

@defproc[(module-submodule-tree [mod module-path?]) (treeof module-path?)]{
 Returns a tree of all submodules found in @racket[mod], including @racket[mod]
 itself. Note that @racket[mod] must be expanded and compiled from source in
 order to find submodules. This is a consequence of the current internal
 representation of modules in the Racket runtime, and may change in future
 versions of this package.

 @(examples
   #:eval (make-base-eval '(require module-search))
   (module-submodule-tree 'module-search/example))}
