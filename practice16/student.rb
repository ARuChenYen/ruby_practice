# 這邊要嘗試在class中使用require的module，這種用法稱為mixins
# Ex: 要能夠這樣用 Student.create_secure_users(users)

require_relative 'Crud'

class Student  # ruby中 class一定要大寫開頭，而且習慣每個單字組合不加底線而且都大寫

    include Crud

    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize (first_name,last_name,email,username,password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
    end

    def set_password
        @password = "790719"
    end
    
    def to_s # class中可以創立這個方法 to_s 把class中的變數列出來
        puts "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, Username: #{@username}, Password: #{@password}"
    end
end


Aru = Student.new("aru","chen","noiharahimari719@gmail.com","sinra","790719")
Bay = Student.new("bay","lu","noiharahimari719@gmail.com","lover", "810806")

puts Aru
puts Bay

Aru.password =  Aru.create_hash_digest(Aru.password)

puts Aru