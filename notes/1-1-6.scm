(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs -3)
(abs 0)

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

(abs -3)
(abs 0)