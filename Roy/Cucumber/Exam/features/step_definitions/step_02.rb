Given(/^item exist (.*)$/) do |item|
	a = false

	Items.get_list.each do |index|
		if index == item
			a = true
		end

	end
	expect(a).to be(true)
end

Given(/^item dont exist (.*)$/) do |item|
	a = false
	Items.get_list.each do |index|
		if index == item
			a = true
		end
	end
	expect(a).to be(false)
end