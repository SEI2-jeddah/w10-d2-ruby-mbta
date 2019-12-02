def metro(line1,stop1,line2,stop2)
    sub = {
        Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]}

    stations1 = []
    stations2 = []

    if line1 == line2 
        number = (sub[line1.to_sym].index(stop1)) - (sub[line1.to_sym].index(stop2))
        
        if((sub[line1.to_sym].index(stop1))<(sub[line1.to_sym].index(stop2)))
        i = (sub[line1.to_sym].index(stop1))
            until i==(sub[line1.to_sym].index(stop2))
                stations1.push(sub[line1.to_sym][i])
                i+=1
            end
        else i = (sub[line1.to_sym].index(stop1))
            until i==(sub[line1.to_sym].index(stop2))
                stations1.push(sub[line1.to_sym][i])
                i-=1
            end
        end
        puts "You must travel through the following stops on the #{line1} line: "
        print stations1
        puts "\nTotal stops between stations are #{number.abs}"
    end

    if (sub[line1.to_sym].index(stop1)) > (sub[line1.to_sym].index("Park Street"))
    first_line = (sub[line1.to_sym].index(stop1))-(sub[line1.to_sym].index("Park Street"))
    i=(sub[line1.to_sym].index(stop1))
        until i<(sub[line1.to_sym].index("Park Street"))
        stations1.push(sub[line1.to_sym][i])
        i-=1
        end
    else 
        first_line =(sub[line1.to_sym].index("Park Street"))-(sub[line1.to_sym].index(stop1)) 
        i=(sub[line1.to_sym].index(stop1))
        until i>(sub[line1.to_sym].index("Park Street"))
        stations1.push(sub[line1.to_sym][i])
        i+=1
        end
    end
    
    if (sub[line2.to_sym].index(stop2)) > (sub[line2.to_sym].index("Park Street"))
        second_line = (sub[line2.to_sym].index(stop2))-(sub[line2.to_sym].index("Park Street"))
        i=(sub[line2.to_sym].index("Park Street"))+1
        until i>(sub[line2.to_sym].index(stop2))
        stations2.push(sub[line2.to_sym][i])
        i+=1
        end
        else 
        second_line =(sub[line2.to_sym].index("Park Street"))-(sub[line2.to_sym].index(stop2)) 
        i=(sub[line2.to_sym].index("Park Street"))-1
        until i<(sub[line2.to_sym].index(stop2))
        stations2.push(sub[line2.to_sym][i])
        i-=1
        end
    end
    if line1 != line2
        puts "You must travel through the following stops on the #{line1} line: "
        print stations1
        puts "\nChange at Park Street"
        puts "Your trip continues through the following stops on #{line2} Line:"
        print stations2
        puts "\nTotal stops between stations are #{first_line+second_line+1}" end
end

puts "Enter the line you are at"
line1 = gets.chomp.to_str
puts "Enter the stop you are at"
stop1 = gets.chomp.to_str
puts "Enter the line you are going to"
line2 = gets.chomp.to_str
puts "Enter the stop you are going to"
stop2 = gets.chomp.to_str

metro(line1,stop1,line2,stop2)
