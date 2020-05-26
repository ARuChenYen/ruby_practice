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
    dial_book.keys
end

def get_area_code(selection,dial_book)
    dial_book[selection]
end

while true

    puts "Do you want to lookup an aera code based on a city name(Y/N)"
    input_answer = gets.chomp.downcase
    break if input_answer != "y"

    puts "Which city do you want the area code for? "
    25.times{print "-"}
    puts ""
    puts get_city_name(dial_book)
    25.times{print "-"}
    puts ""
    print "Enter Your selection: "
    selection = gets.chomp.downcase
    if dial_book.include?(selection)
        puts puts "The area code for #{selection} is #{get_area_code(selection,dial_book)}."
    else
        puts "Invaild city name."
    end
end