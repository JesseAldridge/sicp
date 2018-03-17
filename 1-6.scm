(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

;;;;;;;;;;

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(sqrt 9)

;;;;;;;;;;


`if` is a special-form that modifies the way the code tree is generated.  `if` only evaluates
the branch that the predicate indicates.

`new-if` however is not a special-form, therefore it will evaluate all of the parameters before
executing.
