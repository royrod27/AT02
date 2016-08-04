class Circle
	
	def area
		puts	"Radio: "
		radius=gets.chomp.to_i
		p1=Math::PI
		area=radius*2*p1
		puts	"Area: #{area}"

	end

	def perimeter
		puts	"Radio: "
		radius=gets.chomp.to_i
		p1=Math::PI
		perim=radius*radius*p1 
		puts	"Perimeter: #{perim}"
	end

end

a=Circle.new
a.area
a.perimeter