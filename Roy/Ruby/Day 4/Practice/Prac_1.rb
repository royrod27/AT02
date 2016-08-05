class	Father
	@@money=70
	def self.money
		@@money
	end
	
end

class Child1 < Father
	def self.take_money
		@@money -= 10
	end
end

class Child2 < Father
	def self.take_money
		@@money -= 20
	end
end

class Child3 < Father
	def self.take_money
		@@money -= 30
	end
end

puts 	"Father have: #{Father.money} $us"

puts	"Chil1 take 10 $us"
Child1.take_money
puts	"Now Father have: #{Father.money} $us"

puts	"Chil2 take 20 $us"
Child2.take_money
puts	"Now Father have: #{Father.money} $us"

puts	"Chil3 take 30 $us"
Child3.take_money
puts	"Now Father have: #{Father.money} $us"