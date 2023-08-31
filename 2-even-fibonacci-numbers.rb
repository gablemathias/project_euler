def fibonacci(num)
  if num == 1 || num == 2
    return 1
  else
    fibonacci(num-1) + fibonacci(num-2)
  end
end

# By considering the terms in the Fibonacci sequence whose values
# do not exceed four million, find the sum of the even-valued terms.

def even_fibonacci(n = 1, acc=0, limit=4000000)
  fib = fibonacci(n)

  if fib > limit
    return acc
  else
    if fib % 2 == 0
      even_fibonacci(n+1, acc+fib)
    else
      even_fibonacci(n+1, acc)
    end
  end
end

# p even_fibonacci

# Alternative not using the fibonacci sequence

def even_fibonacci_2
  limit = 4000000
  sum = 0
  a = 1
  b = 1
  while b < limit
    if b % 2 == 0 then sum += b end
    h = a + b
    a = b
    b = h
  end
  p sum
end

even_fibonacci_2
