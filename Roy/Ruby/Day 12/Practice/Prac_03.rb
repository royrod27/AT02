def rnd_generator
	file = File.open("Data.TXT", "a+")
	file.truncate(0)
	file.write("|User	|PASSWORD|TRAVEL_DATE|DESTINATION")
	100.times{
		
		city = ['LaPaz', 'Cochabamba', 'Oruro', 'Beni', 'SantaCruz', 'Potosi', 'Tarija', 'Pando', 'Sucre']
		end_user = rand(10...99)
		num_city = rand(1...9)
		day = rand(10...28)
		mon = rand(001...12)
		end_year = rand(16...17)
		file.write("\n")
		file.write("|USER_#{end_user}|PASS_0#{end_user}|#{mon}/#{day}/20#{end_year} |#{city[num_city]}|")
	}
end
rnd_generator

