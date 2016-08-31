Before do |scenario|
	Users.load_users		
end

Before('@ouline')do |scenario|

	puts "scenario global #{scenario.name}"
end

Before('@normal')do |scenario|

	puts "scenario norma: #{scenario.name}"
end