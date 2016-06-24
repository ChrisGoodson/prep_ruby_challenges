#4. Combinations

#Write a method combinations which takes two arrays of strings and returns an array with all of the combinations of the items in them, listing the first items first.

#> combinations([“on”,”in”],[“to”,”rope”])
#=> [“onto”,”onrope”,”into”,”inrope”]

def combinations(arr1, arr2)
	my_array = []

	arr1.each do |i|
		arr2.each do |j|
			my_array.push(i + j)
		end
	end
	return my_array
end