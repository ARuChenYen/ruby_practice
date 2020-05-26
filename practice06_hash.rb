sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}

my_detail = {'name' => 'Aru', 'favcolor' => 'red'}
print my_detail['favcolor']

another_hash = {a:1,b:2,c:3} 
#:a,:b,:c 變成一個symbol。並非是一個str，可以想成是一個不太會改變的attribute

print another_hash[:a]
#call的時候要連同冒號一起放進去

sample_hash.keys #找出dict的key
sample_hash.values #給出一個值的陣列

sample_hash.each do |key, value|
    puts "The class for key and value is #{key.class} and the value is #{value.class}"
end

#修改value
my_hash = {a:1,b:2,c:3,d:4}
puts my_hash
my_hash[:e] = "Aru"
puts my_hash
my_hash[:c] = "Ruby"
puts my_hash

#用迭代器
my_hash.each{|some_key,some_value| puts "The class for key and value is #{some_key} and the value is #{some_value}"}
my_hash.select{|k,v| v.is_a?(String)} #把字典中屬於字串的挑出來

#迭代整個字典，如果值是字串，就刪掉
my_hash.each{|k,v| my_hash.delete(k) if v.is_a?(String)}
puts my_hash