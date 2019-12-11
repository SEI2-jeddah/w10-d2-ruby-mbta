def stops_between_stations(startL,startS, endL, endS)
    mta = {
        Red:["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
        Green:["Government Center", "Park Street", "Boylston" , "Arlington", "Copley", "Hynes", "Kenmore"],
        Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
    }
    if (startL == endL)
      (mta[startL.to_sym].index(startS) - mta[endL.to_sym].index(endS)).abs
    else
      (mta[startL.to_sym].index(startS) - mta[startL.to_sym].index("Park Street")).abs + (mta[endL.to_sym].index("Park Street") - mta[endL.to_sym].index(endS)).abs
    end
end
puts stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') 
puts stops_between_stations('Red', 'Alewife', 'Red', 'South Station') 
puts stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 