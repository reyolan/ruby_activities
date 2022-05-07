#Activity 1
[1,2,3,4,5,6,7,8,9,10].each {|e| puts e}

#Activity 2
h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5
h

#Activity 3
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

def copy_information(contact_data, contact)
  contact[:email] = contact_data[0]
  contact[:address] = contact_data[1]
  contact[:phone] = contact_data[2]
end

copy_information(contact_data[0], contacts["John Cruz"])
copy_information(contact_data[1], contacts["Avion School"])
contacts

#Activity  4
def age() 
  year = 0
  puts "How old are you?"
  age = gets.chomp.to_i
  4.times {|_i| 
    year+=10
    age+=10
    puts "In #{year} years you will be: #{age}"
  }
end


