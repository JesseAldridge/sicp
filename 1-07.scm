;;;; original untouched code

(define (sqrt-iter guess x)
  ; (display guess) (newline) ; except for this
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

;;;;;;;

; works well for normal-sized numbers
(sqrt 9)  ; expected: 3, actual: 3.00009155413138
(sqrt 137)  ; expected: 11.7046999107,  actual: 11.704699917758145

; works poorly for small numbers
(sqrt .0000001) ; expected: 0.00031622776, actual: .03125106561775382

; because the scale of the tolerance is fixed
; when the numbers are of much smaller scale, the tolerance check always passes

; large integer addition works perfectly
(+
  316227766016837394839048039840938
       3162277660168379540884390803
)
; 316230928294497563218588924231741

; but large floating point arithmetic suffers from lack of precision
(+
  1234567890123456.1234567890
  1234567890123456.1234567890
)
; 2469135780246912. (everything after decimal point is truncated)

; this means that the average of the guess and the improved guess can end up being the same value
(average 3162277.6601683795 (/ 10000000000000 3162277.6601683795)) ; 3162277.6601683795

; this value is still not within the solution tolerance, so the recursion gets stuck here infinitely

; (sqrt 10000000000000)  ; expected: 3,162,277.66016838, actual: <infinite recursion>

; we can solve both problems by changing good-enough to track the fractional change between
; the previous value and the new value

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x)))
     (* guess .001)))

(sqrt 9)  ; expected: 3, actual: 3.00009155413138
(sqrt 137)  ; expected: 11.7046999107,  actual: 11.705105833379696
(sqrt .0000001)  ; expected: 0.00031622776, actual: 0.0003162477562740737
(sqrt 10000000000000)  ; expected: 3,162,277.66016838, actual: 3,162,433.547242504
