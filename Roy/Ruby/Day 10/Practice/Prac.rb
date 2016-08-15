class	Age
	attr_writer:name
	attr_writer:age

	def years_to_hours
		msj = @age <= 35 ? "Age on hours is: #{@age*365*24}" : "Age cannot be calculate."
		print msj
	end

	def selective
		

		case @age
		when 0..5 then puts "You are a Baby"
		when 6..12 then puts "You are a Child"
		when 13..21 then puts "You are a Young People"
		when 22..35 then puts "You are Adult"
		else years_to_hours
				end
	end

end

print 	"Insert Name: "
name = gets.chomp.to_s
print	"Insert Age: "
age = gets.chomp.to_i
a = Age.new
a.name = name
a.age = age
a.years_to_hours
puts ""
a.selective