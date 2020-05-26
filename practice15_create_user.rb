require_relative 'practice14_convert_to_module'

users = [
    {username:"Aru", password:"790719"},
    {username:"Bay", password:"810806"},
    {username:"Zona", password: "800831"},
    {username:"Amy", password: "820630"}
]

hashed_users = Crud.create_secure_users(users)
puts (hashed_users)