Before('@before') do |scenario|
	#puts scenario.name
	if scenario.name == "Client"
		
		puts "Im running a normal Scenario"
	else
		puts "Im running an outline Scenario"
	end
	
end

After('@after') do |scenario|
	if scenario.name == "Client"
		
		puts "I finished running the normal scenario"
	else
		puts "I finished running the outline scenario"
	end
end

Before('@normal, @outline') do |scenario|
	puts "CUSTOMER SEARCH TEST"
end

Before('@outline') do |scenario|
	puts "SEARCHING..."
	
end