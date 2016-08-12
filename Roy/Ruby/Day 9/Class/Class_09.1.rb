def arrays
array = ["First", 2, 3]
end

def arrays_2 array
puts array.first
end

def arrays_3 array
	puts array.last
end

def arrays_4 array1, array2
	puts array1 & array2
	
end


arr2 = [1, 2, 3, "Last"]

puts	arrays 
puts	'##########################'
		arrays_2 arrays
puts	'##########################'
		arrays_3 arr2
puts	'##########################'
		arrays_4 arrays, arr2 
