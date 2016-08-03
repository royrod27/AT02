####***Arithmetic operators***###
num1=12
num2=2

puts	"Addition: #{num1+num2}"
puts	"Subtraction: #{num1-num2}"
puts	"Multiplication: #{num1*num2}"
puts	"Division: #{num1/num2}"
puts	"Modulus: #{num1%num2}"
puts	"Exponent: #{num1**num2}"

###***Comparison Operator***###
num3=5
num4=7
num5=6
num6=5.0

puts	"Equal: #{num3==num4}"
puts	"Not:  #{num3!=num4}"
puts	"Greater: #{num3>num4}"
puts	"Less: #{num3<num4}"
puts	"Greater or Equal: #{num3>=num4}"
puts	"Less or Equal: #{num3<=num4}"
puts	"Comparison Operator: #{num3<=>num4}"
puts	"#{(num3...num4)===num5}"
puts	"#{num3.eql?(5.0)}"


###***Assignment Operator***###

puts	"Assignment: #{num7=num5+num4}"
puts	"Assignment and Operator +: #{num7+=num3}"
puts	"Assignment and Operator -: #{num7-=num3}"
puts	"Assignment and Operator *: #{num7*=num3}"
puts	"Assignment and Operator /: #{num7/=num3}"
puts	"Assignment and Operator %: #{num7%=num3}"
puts	"Assignment and Operator **: #{num3**=num2}"

###***Logical Operator***###
a=true;
b=false

puts	"And_1: #{a and b}"
puts	"Or_1: #{a or b}"
puts	"And_2: #{a&& b}"
puts	"Or_2: #{a||b}"
puts	"Not_1: #{! a}"
puts	"Not_2: #{not b}"