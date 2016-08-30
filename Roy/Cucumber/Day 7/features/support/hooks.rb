Before('@class') do |scenario|
	puts "Let's go scenario: #{scenario.name}"	
end

After do |scenario|
	if scenario.failed?
		puts "failed"
	else
		puts "Bye Bye"
	end
end