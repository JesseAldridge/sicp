(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; Applicative order:
; The operands are evaluated and then the operator is applied to the result.
; y evaluates to p, which evaluates to p infinitely

; Normal order:
; Keeps trying to expand y and never evaluates anything because p never evaluates to primitives

; Both cases don't work due to infinite recursion.

; actually no:
; http://community.schemewiki.org/?sicp-ex-1.5
; https://stackoverflow.com/questions/16036139/seek-for-some-explanation-on-sicp-exercise-1-5

; if causes only one branch to be evaluated in normal order
