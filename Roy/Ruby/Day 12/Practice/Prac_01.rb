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
			print "Ingrese Usuario:"
			new_user = gets.chomp.to_s
			print "Ingrese Mensaje:"
			new_msj = gets.chomp.to_s
			@last_user = new_user
			@visitors += 1
			@hash.store new_user, new_msj 
			end
end

b = Visits.instance
p b.hash
p b.visitors
b.add_user
b.add_user
c = Visits.instance.last_user
p "The last user is: " + c