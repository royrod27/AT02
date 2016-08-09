def celc_to_fahr
	print "Celcius: "
	celcius = gets.chomp.to_f
	fahrenheit = (((9 * celcius) / 5) + 32)
	return fahrenheit
end

def fahr_to_celc
	print "Fahrenheit: "
	fahrenheit = gets.chomp.to_f
	return ((5 * (fahrenheit - 32)) / 9)
end




puts "Fahrenheit: #{celc_to_fahr}"
puts "###########################"
puts "Celcius: #{fahr_to_celc}"