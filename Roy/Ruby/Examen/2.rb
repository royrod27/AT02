require 'singleton'
require_relative 	'1.rb'
class	Registration
		include	Singleton
		attr_reader:hash
		
		def initialize
			@hash = {}
			
		end

		def reg
			
			a = true
			while a
				print "Insert Username: "
				usr = gets.chomp.to_s
				if /^[a-z0-9]{0,11}$/.match(usr) then
					a = false
				end
				
			end
			puts ""
			print "Inser ID: "
			id = gets.chomp.to_s

			@hash.store id, usr
			
		end

		def amount
			a = true
			while a
				print "Amount of users: "
			    qtt = gets.chomp.to_i
			    if (qtt <= 15) && (qtt >= 3) then
			    	a = false
			    	end	

			end
			return qtt
		end

		def type_of_conversion
			puts "Select one option"
			puts "a) From Millimeters to Centimeters"
			puts	"b) From Centimeters to Meters"
			puts	"c) From Meters to Kilometers"
			a = true
			while a
				print "Option: "
				opt = gets.chomp.to_s
				if /^[a-c]{1}$/.match(opt) then
					a = false
				end
			end
			puts "Option selected by user: #{opt}"
			return opt
			
		end

		def call_module opt
			case opt
			when 'a' then	print "Insert the value in mm: " 	
							mm = gets.chomp.to_i
							res = Operations.millimeters_to_centimeters(mm)
							puts "#{mm} Millimeters represent #{res} Centimeters" 
			when 'b' then	print "Insert the value in cm: "
							cm = gets.chomp.to_i
							res = Operations.centimeters_to_meters(cm)
							puts "#{cm} Centimeters represent #{res} Meters" 
			when 'c' then	print "Insert the value in m: "
							met = gets.chomp.to_i
							puts "#{met} Meters represent #{Operations.meters_to_kilometers met} Kilometers" 
						
				
			end
		end

		def quest 
			a = true
			while a
				print "You need a calc?: "
				res = gets.chomp.to_s
				if res == "yes" || res == "no" then
				a = false
				end
			end
			
			return res
			
		end




end
file_use = File.open("execution.log", 'a+')
a = Registration.instance
qtt = a.amount
array = []
qtt.times do |index|
			a.reg
			
			
				end
a.hash.each_with_index do|(key, value), index|
puts "User: #{value}"
				
	if a.quest == "yes" then
		opt = a.type_of_conversion
		a.call_module opt
	else
		print "Bye bye #{value}"
		array.push(value)
	end

end
puts "No: #{array}"


