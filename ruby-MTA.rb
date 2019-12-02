red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"]
green = ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"]
orange = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]

dep_range = []
arrive_range = []
total_range = []
stops = 0


def stops_between_stations(start_line, start_station, end_line, end_station)
    if (start_line == end_line)
        if (end_line.index(end_station) > start_line.index(start_station))
            for i in start_line.index(start_station) .. (end_line.index(end_station) - 1)
            end  
    end

        elsif (end_line.index(end_station) < start_line.index(start_station))
        for i in start_line.index(start_station).downto((end_line.index(end_station) - 1 )) 
            puts i 
        end  
    

end

   
    puts "#{i} total stops"


end

 stops_between_stations(green, "Government Center", green, "Kenmore")

