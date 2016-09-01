module Flitghs
	def Flitghs.load_table
		$table = [{"From" => "TJA", "to" => "CBA", "date" => "09/01/2016", "flitgh" => "0375", "available" => "OK"},
					{"From" => "SCZ", "to" => "LPZ", "date" => "10/01/2016", "flitgh" => "0220", "available" => "NOT"}]

	end

	def Flitghs.get_list_of_origins
		$origins = []
		$table.each do |index|
			$origins.push(index["From"])
		end
		return $origins
	end

	def Flitghs.get_list_of_destination
		$dest = []
		$table.each do |index|
			$dest.push(index["to"])
		end
		return $dest
	end

	def Flitghs.get_list_of_dates
		$dates = []
		$table.each do |index|
			$dates.push(index["date"])
		end
		return $dates
	end

	def Flitghs.get_list_of_flitghs
		$array_fli = []
		$table.each do |index|
			$array_fli.push(index["flitgh"])
		end
		return $array_fli
	end

	def Flitghs.get_list_of_avai
		$array_avai = []
		$table.each do |index|
			$array_avai.push(index["available"])
		end
		return $array_avai
	end


end