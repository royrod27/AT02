Given(/^a borad like this:$/) do |table|
  @board = table.raw
end

When(/^player (\w+) plays in row (\d+), column (\d+)$/) do |player, row, col|
	@board[row.to_i][col.to_i] = player
end

Then(/^the board should look like this:$/) do |expected_table|
	expected_table.diff!(@board)
end