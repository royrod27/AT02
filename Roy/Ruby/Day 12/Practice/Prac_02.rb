require	'singleton'
class RootStore
	include Singleton
	attr_reader:store_price
	attr_reader:store_quantity
	attr_reader:items_to_buy
	attr_reader:discount
	def initialize
		@items_to_buy = {}
		
		@store_price = {
			'Arduino_Uno' => '30$',
			'Raspberry_3' => '60$'
		}

		@store_quantity = {
			'Arduino_Uno' => '20',
			'Raspberry_3' => '10'
		}

		@discount = 0
	end

	def buy_item item, qtt
		
		new_qtt = (@store_quantity[item].to_i - qtt).to_s

		@store_quantity.store item, new_qtt
		@items_to_buy.store item, (price item, qtt).to_s
		
	end
	def price item, qtt
		price = @store_price[item].to_i * qtt
	end

end

a = RootStore.instance
b = true
puts "Welcome, please insert your data of your buy."
puts "In Store:"
p 	a.store_quantity
puts	"Prices:"
p 	a.store_price
while b do
	print "Item: "
	item = gets.chomp.to_s
	print "Quantity: "
	qtt = gets.chomp.to_i
	a.buy_item item, qtt
	print "You need more?(yes or no): "
	res = gets.chomp.to_s
		if res == "no" then
		b = false
		elsif res == "yes" then
					
		end
end

puts "Tank you!\nThe result of your purchase is:"
p a.items_to_buy
array_prices = a.items_to_buy.values
total = 0
array_prices.each{|price_parcial| total =total + price_parcial.to_i }
puts "Total Price: #{total}"
puts "############################"
puts "In Store"
p a.store_quantity
	

#Yes, because we can use one instance many times for buy the products.
	
