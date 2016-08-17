file_example = File.open('test.txt','w+')
file_example.truncate(0)
file_example.write('Line 1')
file_example.close
file_example = File.open('test.txt')
puts file_example.read