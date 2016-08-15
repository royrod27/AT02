class Qwerty
	attr_reader:hash
	def method_1
		@hash = Hash.new
		print	"Insert length: "
		length = gets.chomp.to_i
		length.times do |index|
			print "Insert key: "
			key = gets.chomp
			print "Insert Value: "
			value = gets.chomp
			@hash.store key, value
		end
		
	end

	def method_2 hash

		keys = hash.keys
		print "Keys: "
		p keys		
	end

	def method_3 hash
		values = hash.values
		print	"Values: "
		p 	values		
	end

	def method_4 hash
		print 	"Hash: "
		p  	hash 
	end

	def method_5 hash
		print 	"Insert key:"
		key = gets.chomp.to_s
		print	"Key \"#{key}\" exist?: "
		puts hash.has_key?(key)
		
	end

	def method_6 hash
		print 	"Insert value:"
		value = gets.chomp.to_s
		print 	"Value \"#{value}\" exist?: "
		puts hash.has_value?(value)

	end	
end

a = Qwerty.new
a.method_1
al = a.hash
a.method_2 al
a.method_3 al
a.method_4 al
a.method_5 al
a.method_6 al