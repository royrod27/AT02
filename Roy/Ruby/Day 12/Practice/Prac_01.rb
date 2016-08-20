require	'singleton'
class	Visits
	include Singleton
		attr_accessor:last_user
		attr_reader:visitors
		attr_reader:hash
		
		def initialize
			@hash = {}
			@last_user = "Guest"
			msj = "Welcome to the city"
			@visitors = 0
			@hash.store @last_user, msj

		end

		def add_user 
			print "Insert User:"
			new_user = gets.chomp.to_s
			print "Insert Menssage:"
			new_msj = gets.chomp.to_s
			@last_user = new_user
			@visitors += 1
			@hash.store new_user, new_msj 
			end
end

b = Visits.instance
p b.hash
p "You have #{b.visitors}."
b.add_user
b.add_user
c = b.last_user
p "The last user is: " + c
p "You have #{b.visitors} visitors"
p b.hash

=begin
The difference in the use of Singleton and Class, 
Singleton no need multiple instances and can keep data in many uses. 
Class can not continue saving data.
=end