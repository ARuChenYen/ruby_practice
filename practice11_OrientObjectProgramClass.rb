# instance variable 其他參考資料
# https://ithelp.ithome.com.tw/articles/10157936
# https://medium.com/python-features/class-vs-instance-variables-8d452e9abcbd
# https://ihower.tw/blog/archives/1696
# https://ithelp.ithome.com.tw/articles/10201484
# https://guides.ruby.tw/ruby/instancevars.html
# http://ruby-for-beginners.rubymonstas.org/writing_classes/instance_variables.html


class Student  # ruby中 class一定要大寫開頭，而且習慣每個單字組合不加底線而且都大寫

    attr_accessor :first_name, :last_name, :email, :username
    attr_reader :password  # 建立唯讀的實例變數，但要注意這樣就必須要先自行建構方法去預設

    # @first_name     # class中的instance variable 要加@
    # @last_name      # 如果要改變實例函數，需要自行先定義方法去修改他
    # @email
    # @username
    # @password
    # 用了以下initialize的方法後，同時也創立實例變數，以上這些就不需要了

    def initialize (first_name,last_name,email,username)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
    end

    def set_password
        @password = "790719"
    end

# 設立方法去設@first_name，有兩個方法。此為方法1
#    def first_name(name) 
#        @first_name = name
#    end

# 設立方法去設@first_name，此為方法2
# 如果要這樣修改或讀取實例函數，必須每個都創方法太麻煩了
# 因此ruby中提供了 attr_aeecssor 作這些功能
# 有了這樣就不用方法1或者方法2來修改或讀取實例變數了

#     def first_name=(name) 
#         @first_name = name
#     end

# 這邊把@firstname取出來
#     def first_name
#         @first_name 
#     end
    
    def to_s # class中可以創立這個方法 to_s 把class中的變數列出來
        puts "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, Username: #{@username}, Password: #{@password}"
    end
end

# Aru.first_name("aru") #此為方法1的設定方式
# Aru.first_name = "aru"  #此為方法2的設定方式，實際上比較偏好這種
# 但是這樣作法很冗長，因此會再更進階在class中定義初始化的方法 def initialize...
# 設立初始化的方法後，以下的步驟也不需要了

# Aru.first_name = "aru"
# Aru.last_name = "chen"
# Aru.email = "noiharahimari719@gmail.com"
# Aru.username = "sinra"
# Aru.set_password

Aru = Student.new("aru","chen","noiharahimari719@gmail.com","sinra")
Aru.set_password
Bay = Student.new("bay","lu","noiharahimari719@gmail.com","lover")
Bay.set_password

puts Aru
puts Bay

puts "Aru's last name is altered"
Aru.last_name = Bay.last_name
puts Aru
puts Bay