def stops_between_stations(startLine,startStation, endLine, endStation)

    mbta = {
        Red:["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green:["Government Center", "Park Street", "Boylston" , "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
    }
    if (startLine == endLine)
      (mbta[startLine.to_sym].index(startStation) - mbta[endLine.to_sym].index(endStation)).abs
    else
      (mbta[startLine.to_sym].index(startStation) - mbta[startLine.to_sym].index("Park Street")).abs + (mbta[endLine.to_sym].index("Park Street") - mbta[endLine.to_sym].index(endStation)).abs
    end

end

p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
