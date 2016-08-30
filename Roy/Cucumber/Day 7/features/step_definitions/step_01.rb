Given(/^I have \$(\d+) in my account$/) do |balance|
 	@balance = balance
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw|
	@withdraw = withdraw
end

Then(/^I should receive \$(\d+) cash$/) do |cash|
	puts "This is your $#{cash}"
end

Then(/^the balance of my account should be \$(\d+)$/) do |remaining|
 	@remaining_calculated = (@balance.to_i - @withdraw.to_i).to_s
 	expect(@remaining_calculated).to eql(remaining)
end