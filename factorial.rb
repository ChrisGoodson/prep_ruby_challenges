#2. Factorial

#Write a method factorial which takes a number and returns the product of every number up to the current number multiplied #together.

#> factorial(5)
#=> 120  # from 1*2*3*4*5

def factorial(num)
	holder = num
	until num == 2
		holder *= num-1
		num -= 1
		
	end
	return holder
end