require "bcrypt"

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

newusers = create_secure_users(users)
puts newusers

def authenticate_user(username,password,list_of_user)
    list_of_user.each do |user|
        if user[:username] == username && verify_hash_digest(user[:password]) == password
            # 這邊用來對比外面輸入的密碼是否等於內部已經變成hash的密碼
            # 無法兩個都變成hash來比較，一定要有一邊是未加密的密碼

            return user
        end
    end
    "Credenticals were not corrent"
end

puts users
puts authenticate_user("Aru","790719",newusers)
