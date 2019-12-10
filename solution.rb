def stops_between_stations (start_line, start_station, end_line, end_station)
        subway = [
        { name: "Red",
            stations: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"] },
                { name: "Green",
            stations: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"] },
                { name: "Orange",
            stations: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"] }]
        stops_count = 0
        new_arr = []
        if start_line == end_line 
        subway.each do |hash| 
            if hash[:name] == start_line
                hash[:stations].each_with_index do |station, index| 
                
                # looping through the stations array 
                    if hash[:stations].index(start_station) < hash[:stations].index(end_station) 
                        if station == start_station 
                            for station in hash[:stations]
                                if station == end_station
                                break
                                end
                            stops_count += 1 
                            end
                        end
                    else
                        if station == end_station
                            for station in hash[:stations] 
                                if station == start_station
                                break
                                end 
                            stops_count += 1 
                            end 
                        end
                    end
                end 
            end 
        end 
        end 
        
        if start_line != end_line  
            puts stops_count
            if start_station == "Park Street" 
                subway.each do |hash|
                    if hash[:name] == end_line
                        for station in hash[:name]
                            if station == end_station
                            break
                            end 
                            stops_count += 1
                        end 
                        stops_count = stops_count - hash[:stations].index("Park Street") 
                    end 
                end  

            elsif end_station == "Park Street" 
                subway.each do |hash| 
                    if hash[:name] == start_line
                        stops_count = (hash[:stations].index(start_station) - hash[:stations].index("Park Street")).abs
                    end
                end 
            else
                
                subway.each do |hash|
                    if hash[:name] == start_line
                        for station in hash[:stations]
                            if station == "Park Street"
                            break
                            end
                            new_arr.push(station)
                        end 
                    end 
                end 
                
                subway.each do |hash|
                    if hash[:name] == end_line
                        for station in hash[:stations]
                            new_arr.push(station)
                        end 
                        shift_times = 1 + hash[:stations].index("Park Street")
                        shift_times.times { new_arr.shift } 
                    end 
                end 
                stops_count = new_arr.length
            end 
            puts stops_count
        end 
         
        if start_station == end_station
            puts "There are 0 stops"
        else 
            puts "There are #{stops_count} stops"
        end
end 

stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') 
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 
