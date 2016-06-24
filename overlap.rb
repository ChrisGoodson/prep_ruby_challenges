# #6. Rectangle Overlap

# #Write a method overlap which takes two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all coordinates are positive integers.

# > overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
# => true
# > overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )
# => false
# It doesn't count as overlapping if their edges touch but they do not otherwise overwrite each other

def overlap?(rect1,rect2)
	x = (rect1[0][0]...rect1[1][0]).to_a
	y = (rect1[0][1]...rect1[1][1]).to_a

	if x.include?(rect2[0][0]) && x.include?(rect2[0][1])
		return true
	else
		return false
	end

end