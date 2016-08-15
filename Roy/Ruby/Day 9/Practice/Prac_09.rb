class	Qwerty
	def method_1
		puts	"Array of Numbers"
		print	"Insert Length: "
		length = gets.chomp.to_i
		array_numbers = Array.new()
		length.times do |index|
			print	"Insert value #{index+1}: "
			value = gets.chomp.to_i
			array_numbers.push(value)
		end
		puts	""

		puts	"Array of Letters"
		print	"Insert Length: "
		length = gets.chomp.to_i
		array_letters = Array.new()
		length.times do |index|
			print	"Insert letter #{index+1}: "
			letter = gets.chomp.to_s
			array_letters.push(letter)
		end
		puts ""

		puts	"Mixed Array"
		print	"Insert Length: "
		length = gets.chomp.to_i
		mixed_array = Array.new()
		length.times do |index|
			print	"Insert letter or number #{index+1}: "
			char = gets.chomp
			mixed_array.push(char)
		end
		puts ""

		return array_numbers, array_letters, mixed_array

	end

	def method_2 array_1, array_2
		print	"Common elements: "
		p 		array_1 & array_2
		print	"First element of the first array: "
		puts 	array_1.first
		print	"First element of the second array: "
		puts 	array_2.first
		print	"Last element of the first array: "
		puts	array_1.last
		print	"Last element of the second array: "
		puts	array_2.last		
	end

end

	def method_3 array_1, array_2
		first_of_first = array_1.shift
		last_of_second = array_2.pop
		print 	"Result of join two arrays: "
		p 	array_1 + array_2
		extracted_elements = [first_of_first, last_of_second]
	end

	def method_4 array
		print	"Array is: "
		p  	array
	end	

test = Qwerty.new
a, b, c = test.method_1
test.method_2 b, c
d = method_3 b, c
method_4 d
