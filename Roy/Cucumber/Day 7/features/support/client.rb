class Client

	def client_id
		client = {"pepe" => "123",
				"juan" => "345",
				"maria" => "678"}		
	end

	def priced
		priced = {"123" => "350",
				"345" => "200",
				"678" => "100"}
		
	end
end

def client
	@client||=Client.new
	
end