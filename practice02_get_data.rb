puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
full_name = "#{first_name} #{last_name}"
puts "Thank you, You say your name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
full_name_length = first_name.length + last_name.length
puts "You character length is #{full_name_length}"

puts "Enter a number to multiply by 2"
input = gets.chomp
puts input.to_i * 2