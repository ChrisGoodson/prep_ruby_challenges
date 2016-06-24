#3. Uniques

#Write a method uniques which takes an array of items and returns the array without any duplicates. Don’t use Ruby’s uniq method!

#uniques([1,5,”frog”, 2,1,3,”frog”])
#=> [1,5,”frog”,2,3]

def unique(collection)
	holder = []
	collection.each do |item|
		if !(holder.include?(item))
			holder.push(item)
		end
	end
	holder
end
