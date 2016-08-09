def ticket name, price, destination = "CBBA"
	
	puts 	"Name: #{name}"
	puts	"Destination: #{destination}"
	puts	"Price: #{price} Bs."
	price /= 7
end
print "Insert Name: "
name = gets.chomp.to_s
puts	""

print "Isert Destination: "
destination = gets.chomp.to_s

puts	""

print "Insert price: "
price = gets.chomp.to_f
puts	""



a = destination == "" ? ticket(name, price) : ticket(name, price, destination)
puts "Price: #{a} $us."