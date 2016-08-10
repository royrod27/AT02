def test_block
	puts	"You are in the method"
	yield
	puts	"You are again in the method"
	yield 
end

test_block	{puts "You are in the Block"}