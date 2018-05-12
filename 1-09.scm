(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))

; (plus 2 3)
; (inc (plus (dec 2) 3))
; (inc (plus 1 3))
; (inc (inc (plus (dec 1) 3)))
; (inc (inc (plus 0 3)))
; (inc (inc 3))
; (inc 4)
; 5

(define (plus a b)
  (if (= a 0)
      b
      (plus (dec a) (inc b))))

; (plus 2 3)
; (plus 1 4)
; (plus 0 5)
; 5

(A 1 10)

(A 2 4)

(A 3 3)

