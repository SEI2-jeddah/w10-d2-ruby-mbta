
def stops_between_stations (line1,step1,line2,step2)

    lines = { 
    red: [ "South Station" ,"Park Street" , "Kendall" ,"Central" , "Harvard" , "Porter" , "Davis" ,"Alewife"],
    green: ["Government Center", "Park Street", "Boylston", "Arlington","Copley","Hynes","Kenmore" ],
    orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
}

    steps = 0
      if line1==line2 
        puts (lines[line1.to_sym].index(step2)) - (lines[line1.to_sym].index(step1))
      end 

      if line1!=line2 
        steps = (lines[line1.to_sym].index("Park Street")) - (lines[line1.to_sym].index(step1))
        steps += (lines[line2.to_sym].index(step2)) - (lines[line2.to_sym].index("Park Street"))
        puts steps
      end 
    end

puts "Enter the your current line"
line1 = gets.chomp.to_s
puts "Enter the your next line"
line2 = gets.chomp.to_s
puts "Enter the your current station"
step1 = gets.chomp.to_s
puts "Enter the stop your next station "
step2 = gets.chomp.to_s

stops_between_stations(line1,step1,line2,step2)



# red = [ "South Station" ,"Park Street" , "Kendall" ,"Central" , "Harvard" , "Porter" , "Davis" ,"Alewife"]
# green = ["Government Center", "Park Street" ,"Boylston" ,"Arlington" , "Copley" ,"Hynes" , "Kenmore"]
# orange = ["North Station" , "Haymarket", "Park Street" ,"State" , "Downtown Crossing" , "Chinatown" , "Back Bay" ,"Forest Hills"]

# puts "type your start lines "
#   puts "type your end line "
#  line = gets.chomp.to_s

# puts "type your current station "
# user_input1 = gets.chomp.to_s

# puts "type your next station "
# user_input2 = gets.chomp.to_s



#  if line.index(user_input2) > line.index(user_input1)
#  puts  line.index(user_input2) - line.index(user_input1)

#  elsif line.index(user_input2) < line.index(user_input1)
#      puts  line.index(user_input1) - line.index(user_input2)
#  else line.index(user_input2) == line.index(user_input1)
#      puts  line.index(user_input1) - line.index(user_input2)
#  end 



