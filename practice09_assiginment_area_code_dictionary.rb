dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

def get_city_name(dial_book)
    city_name = dial_book.keys
    city_name.each do |city|
        puts city
    end
end

def get_area_code(selection,dial_book)
    dial_book.each do |city_name_code|
        if city_name_code[0] == selection
            return city_name_code[1]
        end
    end
    return "not in the list. Please choose another one"
end

while true

    puts "Do you want to lookup an aera code based on a city name(Y/N)"
    input_answer = gets.chomp.downcase
    break if input_answer != "y"

    puts "Which city do you want the area code for? "
    25.times{print "-"}
    puts ""
    get_city_name(dial_book)
    25.times{print "-"}
    puts ""
    print "Enter Your selection: "
    selection = gets.chomp.downcase
    city_code = get_area_code(selection,dial_book)
    puts "The area code for #{selection} is #{city_code}."
end