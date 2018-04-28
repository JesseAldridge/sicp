; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the
; two larger numbers.

(define (sum_of_squares x y z)
  (cond
    ; if x is smallest; y^2 + z^2
    (
      (and (< x y) (< x z))
      (+ (* y y)(* z z))
    )
    ; if y is smallest; x^2 + z^2
    (
      (and (< y x) (< y z))
      (+ (* x x)(* z z))
    )
    ; else (z is smallest); x^2 + y^2
    (else
      (+ (* x x)(* y y))
    )))

(sum_of_squares 3 4 5) ; 16 + 25 = 41
(sum_of_squares 5 4 3) ; 16 + 25 = 41

(- (+ (* a a) (* b b) (* c c))
   (min (* a a) (min (* b b) (* c c))))

(sum_of_squares 3 4 5)
(sum_of_squares 5 4 3)
