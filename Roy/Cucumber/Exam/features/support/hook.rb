Before do |scenario|
	Flitghs.load_table	
	Items.load_list	
end

After('@positive') do |variable|
	puts "RUNNING POSITIVE CASES"
end

After('@negative') do |variable|
	puts "RUNNING NEGATIVE CASES"
end