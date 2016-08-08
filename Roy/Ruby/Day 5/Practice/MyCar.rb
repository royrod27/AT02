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

end

car=MyCar.new("1969","Black","Corvette");

car.speed_up(20)
car.speed_up(60)
car.brake(40)
car.shut_down
