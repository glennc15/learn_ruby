def add (first_term, second_term)
	first_term + second_term
end

def subtract (first_term, second_term)
	first_term - second_term
end

def sum(numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

# def multiply(first_term, second_term)
# 	sum(Array.new(first_term){|i| i=second_term})
# end

def multiply(*terms)
	terms.inject { |sum, number| sum * number }
end

def power(base, exponent)
	# going to use multiple. build an array that's length is equal to exponent
	# and every value is set to base. Have to "de-splat" the array befor
	# sending it to multiply().

	# have to check the base for a few cases; 
	# exponent > 0: normal 
	# exponent == 0: return 1
	# exponent < 0: return 1.0/normal
	result = 0
	normal = multiply(*Array.new(exponent.abs){|i| i= base})
	if exponent > 0
		result = normal
	elsif exponent == 0
		result = 1
	elsif exponent < 0
		result = 1.0/normal
	end
	result
end

def factorial(term)
	if term == 1 || term == 0
		return 1
	end
	
	multiply(term, factorial(term-1))
end
