Given(/^i need use my cellphone$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^i push unlock button$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^i can use my applications$/) do
   # Write code here that turns the phrase above into concrete actions
end

Given(/^i need verify all calls$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^i enter to list of calls$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^i should see$/) do |table|
  @list = table.raw

  puts @list
end

Then(/^i have (\d+) calls$/) do |number_calls|
 @n_calls = number_calls
end

Given(/^i need comunication$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^i push in phone button$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^when i dial the number (\d+)$/) do |number|
  @cel_number = number
  puts @lista
end

When(/^i push Call button$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^i have communication with a people$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^one new (in|out) call in the register in date (\d+)\/(\d+)$/) do |type, date_month, date_day|
  @in_out = type
  @date = date_month + "/" +date_day
  puts @in_out
  puts @date
  puts @list
  array  = [@cel_number, @date, @in_out]
  @list[@n_calls.to_i + 1] = array
  puts @list
end

When(/^i review Call register$/) do
  
end

Then(/^i should see,$/) do |table|

  expect(@list).to eql(table.raw)
end

Given(/^i need listen music$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^i enter Spotify$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^i find music$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^i can listen music with my cellphone$/) do
   # Write code here that turns the phrase above into concrete actions
end