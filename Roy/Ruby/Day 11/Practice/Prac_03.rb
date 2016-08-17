class	Register
	attr_reader:hash
	def initialize
		@hash = {}
	end
	
	def user_id_hash
		
		a = true
		while a do
		print 	"Insert UserID: "
		id = gets.chomp.to_s
		puts	""
		print 	"Insert UserName: "
		
		name = gets.chomp.to_s

			if (id.to_i <= 100) && (id.to_i != 0) && /^[a-z]{0,8}$/.match(name) then
			@hash.store id, name
			puts "Ok, insert nex User"
			a = false
			end
		end
	end

	def finder_digit
	print 	"Insert Digit: "
	digit = gets.chomp.to_s
	array = @hash.select{|id, name| /^[#{digit}]/.match(id)}
	array = array.keys
	end

	def finder_letter
	print 	"Insert Letter: "
	letter = gets.chomp.to_s
	array = @hash.select{|id, name| name.to_s =~ /^[#{letter}]/}
	array = array.values
	end

	def print_users
		array = @hash.keys
		array.each do |id|
			case id.to_i
		when 1..25 then puts "User #{id} belong Group 1"
		when 26..50 then puts "User #{id} belong Group 2"
		when 51..75 then puts "User #{id} belong Group 3"
		when 76..100 then puts "User #{id} belong Group 4"
			end
			
		end
		
		
	end

	def print_array array
		p  	array
	end

end

a = Register.new
a.user_id_hash
a.user_id_hash
a.user_id_hash
b = a.finder_digit
c = a.finder_letter
a.print_users
a.print_array b
a.print_array c
p a.hash