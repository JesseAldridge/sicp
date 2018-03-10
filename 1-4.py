# (define (a-plus-abs-b a b)
  # ((if (> b 0) + -) a b))

def plus(a, b):
  return a + b

def minus(a, b):
  return a - b

def a_plus_abs_b(a, b):
  op = plus if b > 0 else minus
  return op(a, b)

print a_plus_abs_b(2, 3)
print a_plus_abs_b(2, -3)
