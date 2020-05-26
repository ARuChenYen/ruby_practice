# 要將class轉換成module
# module Xxxx
#   def self.cccc()
#        ....
#   end
# end
# 每個method前面要加上 self. 才能被其他的script找到
# 但是反而在include成其他class中使用的module時（mixin），不能有self不然會找不到

# 別的檔案要用這個module時就用
# 1.  require_relative 'Xxx' (如果module跟.rb的檔案名稱不一樣，這邊要改放檔案名稱)

# 2.  LOAD_PATH << "."
#     require 'Xxx'

module Crud
    require 'bcrypt'

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
end
