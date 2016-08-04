class	Age
	def datos
		puts	"Insert name: "
		name=gets.chomp
		puts	"Insert age: "
		age=gets.chomp.to_i
	end
end



class AgeMin
	
	def hola(age)
		puts "Age on minutes: #{edadm=age*365*24*60}"
		
	end
end


a=Age.new.datos
AgeMin.new.hola(a)