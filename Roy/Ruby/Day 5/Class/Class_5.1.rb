class Item
#	attr_reader:item_name
#	attr_writer:item_name
	attr_accessor:item_name
	attr_reader:quantity
	def initialize(quantity)
#		@item_name = item_name
		@quantity = quantity
	end
	
	def print_message
		puts	"You have #{@quantity} #{@item_name}"
	end
end

item=Item.new(1)
item.item_name="radio"

item.print_message