# gem install bcrypt first

require 'bcrypt'
my_password = BCrypt::Password.create("sakura") # 用create 每次都會產生不同的加密

puts my_password
puts my_password.version
puts my_password.cost
puts (my_password == "sakura")
puts (my_password == "sinra")


my_password = BCrypt::Password.new("$2a$12$ogS788kOdOzwWNfSw8Uep.xE65RF6FsXdjuHpTIcJlhYpIS4dZqh2")
# 直接創立sha碼，跟密碼進行比對還是一樣的
puts (my_password=="sakura")


users = [
    {username:"Aru", password:"790719"},
    {username:"Bay", password:"810806"},
    {username:"Zona", password: "800831"},
    {username:"Amy", password: "820630"}
]

def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

# 將之前user的hash中的密碼拿去加密後放回來
def create_secure_users(list_of_user)
    list_of_user.each do |user|
        user[:password] = create_hash_digest(user[:password])
    end
    return list_of_user
end

create_secure_users(users)
puts users