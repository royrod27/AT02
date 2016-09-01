Given(/^user (.*)$/) do |usr|
  @usuario = usr
end

When(/^insert password (.*)$/) do |pass|
  
end

Then(/^i see Welcome (.*)$/) do |uss|
  puts "Welcome #{uss}"
end



Given(/^i have a origin (.*)$/) do |origin|
  @orig = origin
  @result = []
  @result.push(@orig)
  @result2 = []
  a = false
  
  origenes = Flitghs.get_list_of_origins
  origenes.each do |index|
  	if index == @orig
  		@result2.push(index)
  		a = true
  	end
  end
  expect(a).to be(true)
end

When(/^i have a destination (.*)$/) do |destination|
  @dest = destination
  @result.push(@dest)

  a = false
  destinos = Flitghs.get_list_of_destination
  destinos.each do |index|
  	if index == @dest
  		a = true
  		@result2.push(index)
  	end
  end
  expect(a).to be(true)
end

When(/^i have a (\d+)\/(\d+)\/(\d+)$/) do |month, day, year|
  @date = month + "/" + day + "/" + year
  @result.push(@date)

  a = false
  dates = Flitghs.get_list_of_dates
  dates.each do |index|
  	if index == @date
  		a = true
  		@result2.push(index)
  	end
  end
  expect(a).to be(true)


end

Then(/^i should see the (\d+)$/) do |fligth|
  @num_fligth = fligth
  @result.push(@num_fligth)

  a = false
  flits = Flitghs.get_list_of_flitghs
  flits.each do |index|
  	if index == @num_fligth
  		a = true
  		@result2.push(index)
  	end
  end
  expect(a).to be(true)
end

Then(/^(OK|NOT)$/) do |available|
  @state = available
 	@result.push(@state)

  a = false
  avai = Flitghs.get_list_of_avai
  avai.each do |index|
  	if index == @state
  		a = true
  	end

  end
  @result2.push(@state)
  expect(a).to be(true)

  expect(@result).to eql(@result2)
end