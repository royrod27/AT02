Given(/^I search (\w+)$/) do |user|
	@user_name = user
	result = client.client_id.has_key?(user)
	expect(result).to be true
end

When(/^i insert (\d+)$/) do |user_id|
	@id = client.client_id[@user_name].to_i
	expect(@id).to eq(user_id.to_i)
end

Then(/^i have (\d+)$/) do |price_a|
	price_s = client.priced[@id.to_s].to_i
	expect(price_s).to eql(price_a.to_i)  
end