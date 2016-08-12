class	Arrays
	def new_array
	array = Array.new()
	print "Insert length: "
	length = gets.chomp.to_i
	puts	""
	length.times do |index|
		print "Isert value #{index}: "
		a = gets.chomp.to_i
		array.push(a)
	end
	puts	""
	return array
	end

	def array_2 array
	print	"Print Array: "
	p array
	end
end
array = Arrays.new

array.array_2 array.new_array