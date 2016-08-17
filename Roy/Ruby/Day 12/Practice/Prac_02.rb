require	'singleton'
class RootStore
	include Singleton
	attr_reader:store_price
	attr_reader:store_quantity
	def initialize
		items_to_buy = 0
		@store_price = {
			'Arduino_Uno' => '30$',
			'Raspberry_3' => '60$'
		}

		@store_quantity = {
			'Arduino_Uno' => '20'
			'Raspberry_3' => '10'
		}

		discount = 0

	end

	def buy_item item, qtt
		
		@store_quantity[item] = 
	end

end
print "Item: "
item = gets.chomp.to_s
print "Quantity: "
qtt = gets.chomp.to_s
a = RootStore.instance
a.buy_item (item, qtt)