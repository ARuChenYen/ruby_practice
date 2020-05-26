users = [
    {username:"Aru", password:"790719"},
    {username:"Bay", password:"810806"},
    {username:"Zona", password: "800831"},
    {username:"Amy", password: "820630"}
]

puts "Welcome to the authenticatoy"
25.times{print"-"}
puts ""
puts "This program will take input from the user and compare password"

left_time = 3

while left_time >0
    print "User name: "
    user_name = gets.chomp
    print "User password: "
    user_password = gets.chomp

    for dict in users
        if dict[:username] == user_name and dict[:password] == user_password
            puts dict
            left_time = -10
            break
        end
    end

    if left_time > 0
        print "Wrong user or password. You have #{left_time-1} times left."
        puts ""
        left_time -=1
    end
end

if left_time == 0
    puts "You have exceed the number of attempts"
end
