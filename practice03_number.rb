puts "I am a line"
puts "-"*20
puts "I am a different line after a divider"
20.times{print "-"}

# rand(n) 隨機產生0-n。但不包含n
20.times{puts rand(10)}

puts "Simple calculator"
25.times{print"-"}
puts""
puts "Enter a first number"
num1 = gets.chomp.to_f
puts "Enter second number"
num2 = gets.chomp.to_f
puts "The first number multipled by second number is #{num1 * num2}"
puts "The first number divided by second number is #{num1 / num2}"
puts "The first number add by second number is #{num1 + num2}"
puts "The first number substractd by second number is #{num1 - num2}"
puts "The first number divided by second number will remain #{num1 % num2}"