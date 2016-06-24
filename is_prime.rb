#5. Primes

#Write a method is_prime? which takes in a number and returns true if it is a prime number.

#> is_prime?(7)
#=> true
#> is_prime?(14)
#=> false

def is_prime?(num)
	holder = (2..num).to_a
	if num <= 1
		return false
	end
	holder.each do |item|
		if num % item == 0
			return false
		else
			return true
		end
	end
end
		