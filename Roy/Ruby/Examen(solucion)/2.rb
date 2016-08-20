require 'singleton'
require_relative 	'1.rb'
class	Registration
		include	Singleton
		attr_reader:hash
		attr_reader:file
		
		def initialize
			@hash = {}
			@file = File.open("execution.log", 'w+')
			@file.truncate(0)
		end

		def reg
			
			a = true
			while a
				
				@file.write(men =  "Insert Username: ")
				print men
				@file.write(usr = gets.chomp.to_s)
				if /^[a-z0-9]{0,11}$/.match(usr) then
					a = false
				end
				
			end
			puts ""
			@file.write("\n")
			@file.write(men = "Inser ID: ")
			print men
			@file.write(id = gets.chomp.to_s)
			@file.write("\n")
			@hash.store id, usr
			
		end

		def amount
			a = true
			while a
				@file.write(men = "Amount of users: ")
				print men
			    @file.write(qtt = gets.chomp.to_i)
			    if (qtt <= 15) && (qtt >= 3) then
			    	a = false
			    	end	
			    	@file.write("\n")
			end
			return qtt
		end

		def type_of_conversion
			@file.write(men = "Select one option\n")
			puts 	men
			@file.write(men = "a) From Millimeters to Centimeters\n")
			puts 	men
			@file.write(men = "b) From Centimeters to Meters\n")
			puts	men
			@file.write(men = "c) From Meters to Kilometers\n")
			puts	men
			a = true
			while a
				@file.write(men = "Option: ")
				print men
				@file.write(opt = gets.chomp.to_s)
				@file.write("\n")
				if /^[a-c]{1}$/.match(opt) then
					a = false
				end
			end
			@file.write(men = "Option selected by user: #{opt}")
			puts men
			@file.write("\n")
			return opt
			
		end

		def call_module opt
			case opt
			when 'a' then	@file.write(men = "Insert the value in mm: ")
							print men	
							@file.write(mm = gets.chomp.to_i)
							@file.write("\n")
							res = Operations.millimeters_to_centimeters(mm)
							@file.write(men = "#{mm} Millimeters represent #{res} Centimeters\n")
							puts men
			when 'b' then	@file.write(men = "Insert the value in cm: ")
							print men
							@file.write(cm = gets.chomp.to_i)
							@file.write("\n")
							res = Operations.centimeters_to_meters(cm)
							@file.write(men = "#{cm} Centimeters represent #{res} Meters\n")
							puts men 
			when 'c' then	@file.write(men = "Insert the value in m: ")
							print men
							@file.write(met = gets.chomp.to_i)
							@file.write("\n")
							res = Operations.meters_to_kilometers(met)
							@file.write(men = "#{met} Meters represent #{res} Kilometers\n")
							puts  men
			end
		end

		def quest 
			a = true
			while a
				print men = "You need a calc?:(yes or no) "
				@file.write(men)
				@file.write(res = gets.chomp.to_s)

				if res == "yes" || res == "no" then
				a = false
				end
				@file.write("\n")
			end
			
			return res
			
		end




end

a = Registration.instance
qtt = a.amount
array = []
qtt.times do |index|
			a.reg
			
			
				end
a.hash.each_with_index do|(key, value), index|
	a.file.write(men = "User: #{value}")
	a.file.write("\n")
	puts men
				
	if a.quest == "yes" then
		opt = a.type_of_conversion
		a.call_module opt
	else
		a.file.write(men = "Bye bye #{value}")
		a.file.write("\n")
		print men
		array.push(value)
	end

end
a.file.write(men = "No: #{array}")
puts men
a.file.close