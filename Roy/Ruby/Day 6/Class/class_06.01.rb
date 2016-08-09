def customer_id name, customer_id

	msj = customer_id > 100 ? "Thanks to be our customer" : "Thanks"
	puts "Hi #{name.upcase} "
	puts "You are our customer #{customer_id}, #{msj}"
end

customer_id "pedro", 101

