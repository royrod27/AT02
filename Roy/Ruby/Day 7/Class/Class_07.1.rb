def secs_min_and_hour secs
	minu = secs/60.0
	hour = minu/60.0

	return minu, hour
end
print	"Seconds: 	"
secs = gets.chomp.to_f
min, hour = secs_min_and_hour secs

puts "Minutes: 	#{min}"
puts "Hours: 		#{hour}"