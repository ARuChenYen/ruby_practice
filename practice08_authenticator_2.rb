users = [
    {username:"Aru", password:"790719"},
    {username:"Bay", password:"810806"},
    {username:"Zona", password: "800831"},
    {username:"Amy", password: "820630"}
]

def auth_user(user_name,user_password,user_data)
    user_data.each do |user_record|
        if user_record[:username] == user_name and user_record[:password] ==user_password
            return user_record
            break
        end
    end
    return "Wrong user or password."
end

puts "Welcome to the authenticatoy"
25.times{print"-"}
puts ""
puts "This program will take input from the user and compare password"

attempts = 1
while attempts < 4
    print "User name: "
    user_name = gets.chomp
    print "User password: "
    user_password = gets.chomp

    authentication = auth_user(user_name,user_password,users)
    puts authentication

    puts "Press n to quit or any other key to continue"
    input = gets.chomp.downcase
    break if input  == "n"
    attempts += 1
end