class	Persons
	
	attr_reader:register
	

	def sign_in
		@register = Hash.new
		print	"Insert length: "
		length = gets.chomp.to_i
		length.times do |index|
			print "Insert ID: "
			id = gets.chomp.to_s
			print "Insert Name: "
			name = gets.chomp.to_s
			@register.store id, name
			end
		
	end

	def get_all_persons
		
		@register.each_with_index do |(id, name), index|
			print "Register: #{index + 1} ID: #{id} Name: #{name}"
			puts ""

			end

	end

	def upper_case
		upName = []
		@register.each_with_index do |(id, name), index|
			name = name.upcase
			print "Register: #{index + 1} Name: #{name}"
			puts ""
			upName.push(name)
			end

		return upName
	end

	def bye array
		array.each{|name|
			puts "Good Bye #{name}"
			
		}
		
	end

end

a = Persons.new
a.sign_in
a.get_all_persons
array = a.upper_case
a.bye array