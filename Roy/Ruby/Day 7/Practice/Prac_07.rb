$result = 0

def method_block
	
	yield
	puts	"The value obtained is #{$result}"
end

method_block {$result = 15.0 * 25}

method_block do 
	$esult = $result == 0 ?  25+15:25*5
	puts	"I changed the value the block"
end

method_block {$result = 15.0 / 25}



def call_block  
  yield("Hello", 99)  
end  
call_block {|str, num| puts str + ' ' + num.to_s}  