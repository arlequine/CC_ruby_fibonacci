#dos métodos que reciban un integer positivo n y regresen el el nth fibonacci number
# un método iterativo y un método recursivo.
def fibonacci_recursive(n)
  return  n  if (0..1).include? n
  ( fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2) )
end

#test
p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5

def fibonacci_iterative(n)
	return 0 if n == 0
	return 1 if n == 1

	fibo = []
	for index in 1..n
		if index == 1
			fibo[0] = 0
			fibo[1] = 1
		else
			num1 = fibo[index - 1]
			num2 = fibo[index - 2]
			result = num1.to_i + num2.to_i
			fibo << result
		end
	end	
	fibo.max
end

#test
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5
p fibonacci_iterative(5) 
