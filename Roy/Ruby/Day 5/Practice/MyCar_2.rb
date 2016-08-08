class MyCar
	attr_reader:car_year
	attr_reader:car_model
	attr_accessor:car_color
	attr_reader:current_speed


	def initialize(car_year, car_color, car_model)
		@car_year = car_year
		@car_color = car_color
		@car_model = car_model
		@current_speed = 0
	end

	def speed_up(number)
		@current_speed += number
		puts "Your speed is #{@current_speed} mph"
	end

	def brake(number)
		@current_speed -= number
		puts "Your speed is #{@current_speed} mph"
	end

	def shut_down
		@current_speed = 0
		puts "You car is off and your speed is #{@current_speed} mph"
	end

	def show_dates
		puts 	"Car: 		#{@car_model}"
		puts	"Color: 		#{@car_color}"
		puts	"Year: 		#{@car_year}"
	end


end

car=MyCar.new("1969","Black","Corvette");


car.show_dates
puts	"########################"
car.car_color = "Red"
car.show_dates