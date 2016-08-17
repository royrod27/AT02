def files
	print "File Name: "
	file_name = gets.chomp.to_s
	puts ""
	print "File Extension: "
	file_ext = gets.chomp.to_s
	file = file_name + "." + file_ext
	file_use = File.open(file, 'a+')
	#file_use.truncate(0)
	puts ""
	print "Lines: "
	lines = gets.chomp.to_i
	lines.times do |line|
		print "Text in line #{line}: "
		text = gets.to_s
		file_use.write(text)
		puts ""
	end
	file_use.close
	file_use = File.open(file)
	print file_use.read
	
end

files