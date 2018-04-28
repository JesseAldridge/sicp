
(define (cube-iter guess orig)
  (if (good-enough? guess orig)
      guess
      (cube-iter (improve guess orig)
                 orig)))

(define (improve guess orig)
  (/ (+ (/ orig (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess orig)
  (< (abs (- guess (improve guess orig)))
     (* guess .001)))

(define (cube-root orig)
  (cube-iter 1.0 orig))


(cube-root 27) ; expected: 3, actual: 3.001274406506175
(cube-root 10000)
