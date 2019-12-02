def metro(startLine,startStation,endLine,endStation)
    subway = {
        Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]}
    stations1 = []
    stations2 = []
    if startLine == endLine 
        number = (subway[startLine.to_sym].index(startStation)) - (subway[startLine.to_sym].index(endStation))
        if((subway[startLine.to_sym].index(startStation))<(subway[startLine.to_sym].index(endStation)))
        i = (subway[startLine.to_sym].index(startStation))
            until i==(subway[startLine.to_sym].index(endStation))
                stations1.push(subway[startLine.to_sym][i])
                i+=1
            end
        else i = (subway[startLine.to_sym].index(startStation))
            until i==(subway[startLine.to_sym].index(endStation))
                stations1.push(subway[startLine.to_sym][i])
                i-=1
            end
        end
        puts "You must travel through the following stops on the #{startLine} line: "
        print stations1
        puts "\nTotal stops between stations are #{number.abs}"
    end
    if (subway[startLine.to_sym].index(startStation)) > (subway[startLine.to_sym].index("Park Street"))
    first_line = (subway[startLine.to_sym].index(startStation))-(subway[startLine.to_sym].index("Park Street"))
    i=(subway[startLine.to_sym].index(startStation))
        until i<(subway[startLine.to_sym].index("Park Street"))
        stations1.push(subway[startLine.to_sym][i])
        i-=1
        end
    else 
        first_line =(subway[startLine.to_sym].index("Park Street"))-(subway[startLine.to_sym].index(startStation)) 
        i=(subway[startLine.to_sym].index(startStation))
        until i>(subway[startLine.to_sym].index("Park Street"))
        stations1.push(subway[startLine.to_sym][i])
        i+=1
        end
    end
    if (subway[endLine.to_sym].index(endStation)) > (subway[endLine.to_sym].index("Park Street"))
        second_line = (subway[endLine.to_sym].index(endStation))-(subway[endLine.to_sym].index("Park Street"))
        i=(subway[endLine.to_sym].index("Park Street"))+1
        until i>(subway[endLine.to_sym].index(endStation))
        stations2.push(subway[endLine.to_sym][i])
        i+=1
        end else 
        second_line =(subway[endLine.to_sym].index("Park Street"))-(subway[endLine.to_sym].index(endStation)) 
        i=(subway[endLine.to_sym].index("Park Street"))-1
        until i<(subway[endLine.to_sym].index(endStation))
        stations2.push(subway[endLine.to_sym][i])
        i-=1
        end
    end
    if startLine != endLine
        puts "You must travel through the following stops on the #{startLine} line: "
        print stations1
        puts "\nChange at Park Street"
        puts "Your trip continues through the following stops on #{endLine} Line:"
        print stations2
        puts "\nTotal stops between stations are #{first_line+second_line+1}" end
end
puts "Enter the line you are at"
startLine = gets.chomp
puts "Enter the stop you are at"
startStation = gets.chomp
puts "Enter the line you are going to"
endLine = gets.chomp
puts "Enter the stop you are going to"
endStation = gets.chomp
metro(startLine,startStation,endLine,endStation)