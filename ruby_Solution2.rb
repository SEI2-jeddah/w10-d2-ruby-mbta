def stops_between_stations (start_line, start_station, end_line, end_station)
    subway = {
        Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]}
    stops_count = 0
    if (start_line == end_line)
        stops_count = (subway[start_line.to_sym].index(end_station) - subway[start_line.to_sym].index(start_station)).abs
    else
        if start_station == "Park Street"
            stops_count = (subway[end_line.to_sym].index(end_station) - subway[end_line.to_sym].index("Park Street")).abs
        elsif end_station == "Park street"
            stops_count = (subway[start_line.to_sym].index("Park Street") - subway[start_line.to_sym].index(start_station)).abs
        else
            stops_count = (subway[start_line.to_sym].index(start_station) - subway[start_line.to_sym].index("Park Street")).abs + (subway[end_line.to_sym].index("Park Street") - subway[end_line.to_sym].index(end_station)).abs
        end
    end

    p "There's #{stops_count} stops till end station"
end
  stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
    stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
      stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
