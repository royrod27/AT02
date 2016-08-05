class	Person
	def initialize(id, name, addr)
		@p_id = id
		@p_name = name
		@p_addr = addr
	end

	def display_details()
		puts	"Person id: #{@p_id}"
		puts	"Person name: #{@p_name}"
		puts	"Person address: #{@p_addr}"
	end

	def change_name
		@p_name = "Carlos"
	end
end

per1=Person.new(25, "Pedro", "B.Galindo #32")
per2=Person.new("44", "Oscar", "E.Arze #44")

per1.display_details
puts	"##############################"
per2.display_details()

per1.change_name
puts	"##############################"
per1.display_details