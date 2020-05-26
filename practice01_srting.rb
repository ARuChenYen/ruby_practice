first_name = "Aru"
last_name = "Chen"

puts (first_name + " " + last_name)
# 但是這個code有點醜，因此有不同作法

puts "My first name is #{first_name} and my last name is #{last_name}"
# 但是只有雙引號可以用 #{變數名稱} 傳值，單引號無法

ten = 10
ten_i = ten.to_s
puts
puts ten_i.to_i.class

#sub取代字串
sentence = "Welcome to the Jungle"
puts sentence
sentence2 = sentence.sub("the Jungle","Utopia")
puts sentence2

#Ruby在指定第一個參數給第二個參數時
#指向的是第一個參數的記憶體位址
#所以當前一個參數改變，並不會直接改變第二個參數

first = "ILLY"
second = first 
puts first
puts second
first = "IRIS"
puts first
puts second

# Escape 跳脫符號 \
# 一些符號在程式中已經有指定用途，因此若要使用這些符號當成一般的字串時，就要用跳脫符號，讓這些符號跳脫原本程式預定的功能
# 如以下的範例，直接用會出錯。要用上escape

# puts "I ask you "what is your hobby？""
puts "I ask you \"what is your hobby？\""