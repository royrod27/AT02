class Person

	
	attr_writer:name
	attr_reader:msj
	attr_accessor:msj2

	def greet
	@msj="Hi #{@name}"
	@msj2=" Have a nice day"
	end
end

person=Person.new
person.name="Pedro"
person.greet
print person.msj
puts person.msj2

