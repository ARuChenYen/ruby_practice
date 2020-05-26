#def 要放在最前面，因為ruby執行從頭到尾一行一行
def opeartor_do(first_num,second_num,user_entry)
    if user_entry == "1"
        return first_num.to_f * second_num.to_f
    elsif user_entry == "2"
        return first_num.to_f + second_num.to_f
    elsif user_entry == "3"
        return first_num.to_f - second_num.to_f
    else
        return "ERROR"
    end
end

def put_operator(user_entry)
    if user_entry == "1"
        operator = "multiply"
    elsif user_entry == "2"
        operator = "addition"
    elsif user_entry == "3"
        operator = "subtraction"
    else
        operator = "ERROR OPEATOR"
    end
    puts "You have chosen to #{operator}"
    return operator
end

puts "Simple calculator"
25.times{print"-"}
puts""
puts "Enter a first number"
num1 = gets.chomp.to_f
puts "Enter second number"
num2 = gets.chomp.to_f

puts "What do you want to do ?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"
user_entry = gets.chomp

op = put_operator(user_entry)
puts "The first number #{op} by second number is #{opeartor_do(num1,num2,user_entry)}"