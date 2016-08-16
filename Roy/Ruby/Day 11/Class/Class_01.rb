def method_1
	
	a = true
	while a do
	print "Insert Username: "
	usr = gets.chomp.to_s
		if /^[a-z0-9_]*$/ then
		a = false
		print "yes"
		end
	end
end
method_1