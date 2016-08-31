Given(/^admin user is defined$/) do
 expect($app_user).to_not eql(nil)
 	$usr_list = Users.get_list_of_users(Users.load_users)
	$usr_id = Users.get_list_of_ids(Users.load_users)
end

When(/^i verify (\w+)$/) do |user|
  p $usr_list
  a = false
  
  $usr_list.each do |index|
  	if index == user
  		a = true
  	end
  	
  end
  
  expect(a).to be(true)	
  puts "Encontrado"
end

When(/^i verify (\w+) does not exist$/) do |user|
  puts $usr_list
  a = true
  
  $usr_list.length.times do |index|
  	if $usr_list[index] != user
  		a = false
  	end
  	
  end
  expect(a).to be(false)	
  puts "User #{user} dont exist"
end

Given(/^i have a clients (\w+)$/) do |user|
  p $usr_list
  a = false
  
  $usr_list.each do |index|

  	if index == user
  		a = true
  	end
  	
  end
  
  expect(a).to be(true)	
  puts "Encontrados"

end

When(/^i insert id (\d+)$/) do |id|
	p $usr_list
  a = false
  
  $usr_id.each do |index|
  	if index.to_i == id.to_i
  		a = true
  	end
  	
  end
  
  expect(a).to be(true)	
  puts "IDs Encontrados"
end