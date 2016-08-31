module Users
	def Users.load_users
	@client = {"pepe" => "123",
				"juan" => "345",
				"maria" => "678"}
	end

	def Users.get_list_of_users(hash)
		@list_user = @client.keys
	end

	def Users.get_list_of_ids(hash)
		@list_ids = @client.values
	end

	def Users.extract_users_from_array (user, array)
	end

	def Users.exist_on_array? (user, array)
	end
end