def stops_between_stations (start_line, start_station, end_line, end_station)
lines = {
    Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
    Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
    Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]}
    
    if start_line == end_line 
    lines[start_line.to_sym].index(start_station) - lines[end_line.to_sym].index(end_station)
    else
        stops = 0
        index = lines[start_line.to_sym].index(start_station)
        lines[start_line.to_sym].rotate!(index)
    stops = lines[start_line.to_sym].index("Park Street") - lines[start_line.to_sym].index(start_station)

    index = lines[end_line.to_sym].index(end_station)
        lines[end_line.to_sym].rotate!(index)
     stops += lines[end_line.to_sym].length - lines[end_line.to_sym].index("Park Street")    
    end   
  end

p "Start line"
start_line = gets.chomp
p "start station"
start_station = gets.chomp

p "end line"
end_line = gets.chomp
p "end station "
end_station = gets.chomp

p stops_between_stations(start_line,start_station,end_line,end_station)