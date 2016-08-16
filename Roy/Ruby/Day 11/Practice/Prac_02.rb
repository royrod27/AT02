def username
	a = true
	while a do
	print "Insert Username: "
	usr = gets.chomp.to_s
		if /^[a-z0-9_]*$/.match(usr) then
		a = false
		print "O.K."
		end
	end
end

def password
	a = true
	while a do
	print "Insert Password: "
	pass = gets.chomp.to_s
		if /^[a-zA-Z0-9]{8,16}$/.match(pass) then
		a = false
		print "O.K."
		end
	end
	
end

def e_mail
	a = true
	while a do
	print "Insert E-Mail: "
	email = gets.chomp.to_s
		if /^[a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/.match(email) then
		a = false
		print "O.K."
		end
	end

end



username
puts ""
password
puts ""
e_mail