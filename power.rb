#1. Power

#Write a method power which takes two integers (base and exponent) and returns the base raised to the power of exponent. Do not use Ruby’s ** operator for this!

#> power(3,4)
#=> 81 # (3*3*3*3)

def power (base, exponent)
	num = base
	(exponent-1).times do
		num *= base
	end
return num
end