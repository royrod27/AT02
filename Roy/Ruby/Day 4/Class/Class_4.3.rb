$global_var=5

module Module1
	puts	"Inside Module1"
	puts 	$global_var
end

def method1
	puts	"Inside method1"
	puts 	$global_var
end



class SomeClass
	puts	"Inside class"
	puts	$global_var
	$global_var=75
end

method1	#llamada al metodo method1
puts	"Inside TopLevel"
puts	$global_var
puts	global_variables.include?:$global_var