a = [1,2,3,4,5,6,7,8,9]
puts a
print a
print a.last
puts ""

# .. 產生1到100的range
x = 1..100
puts x.class
z = x.to_a #將range轉換成array

print z
puts ""
puts "印出z"
20.times{print"-"}
puts ""


print z.shuffle #將array隨機排列
puts ""
puts "印出z.shuffle"
20.times{print"-"}
puts ""

print z
puts ""
puts "印出z"
puts "shuffle 並沒有改變原本的陣列"
20.times{print"-"}
puts ""

print z.shuffle!
puts ""
puts "印出z.shuffle!"
20.times{print"-"}
puts ""

#在ruby中 !(mutate)會直接改變陣列中的內容
print z
puts ""
puts "印出z"
puts "shuffled! 改變了原本的x (mutate)"
20.times{print"-"}
puts ""

"陣列常見指令"
a = "a".."z"        #創立一個a到z的列
a = a.to_a
a.length            #顯示a的個數
a << 10             #把10寫入陣列最後，功能跟append一樣
a.append("home")
a.last              #找出最後一個元素
a.first             #找出第一個元素
a.unshift("home")   #加到第一個(編號0)位址
a.uniq              #去掉重複的元素，但要用uniq!才會真正改變陣列
a.empty?            #確認a是不是空的。true or false
a.include?("home")  #確認a是不是有"home"

a.push("new item")  #新增元素在最後一個位址
b = a.pop           #將最後一個位址的元素取出並放在b

a.join("-")         #將所有項加上"-"後轉成str
a.split("-")        #反過來把a以"-"分割成陣列

# 迭代，在其他語言用for i in a。ruby中偏好 a.each do |i|
a.each do |abra|
    print abra + " "
end

#這個寫法跟上面的意思一樣，但是更簡潔
a.each {|abra| print abra + " "} 

#將每個元素字母轉換成大寫開頭
a.each{|abra| print abra.capitalize + " "} 

b = (1..100).to_a.shuffle #隨機產生1到100的陣列
a.select{|number| number.odd?} 
#找出基數。select可以找出符合條件的項目。select回傳值為布林ture of false
#因此用number.odd? 檢查每個數是不是基數，然後是的就挑出來
