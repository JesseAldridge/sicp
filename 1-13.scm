; Exercise 1.13. Prove that Fib(n) is the closest integer to phi ^ n / sqrt(5),
; where phi = (1 + sqrt(5)) / 2. Hint: Let psi = (1 - sqrt(5)) / 2.
; Use induction and the definition of the Fibonacci numbers (see section 1.2.2) to prove that
; Fib(n) = (phi ^ n - psi ^ n) / sqrt(5)

; Fib(n) =~ phi ^ n / sqrt(5)
; phi    =  (1 + sqrt(5)) / 2
; psi    =  (1 - sqrt(5)) / 2
; Fib(n) =  (phi ^ n - psi ^ n) / sqrt(5)
; Fib(n) =  Fib(n - 1) + Fib(n - 2)


Fib(n) =  Fib(n - 1) + Fib(n - 2)
Fib(n) =  (phi ^ n - psi ^ n) / sqrt(5)
          phi^n/sqrt(5) - psi^n/sqrt(5)

Fib(n-1) = phi^n/sqrt(5)
           [(1 + sqrt(5)) / 2]^n / sqrt(5)


Fib(n-2) = psi^n/sqrt(5)

([(1 + sqrt(5)) / 2] - [(1 - sqrt(5)) / 2]) / sqrt(5)




x ^ 0 = 1
x ^ 1 = x
x ^ 2 = x * x = x + 1  (golden ratio)

x ^ 3 = x ^ 2 * x
      = (x + 1) * x
      = x ^ 2 + x

x ^ 4 = x ^ 3 * x
      = (x ^ 2 + x) * x
      = (x ^ 3 + x ^ 2)

x ^ 5 = x ^ 4 * x
      = (x ^ 3 + x ^ 2) * x
      = (x ^ 4 + x ^ 3)

x ^ 6 = (x ^ 5 + x ^ 4)

; and so on...

; therefore

phi ^ n / sqrt(5) = (phi ^ (n - 1) + phi ^ (n - 2)) / sqrt(5)
