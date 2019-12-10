subway = {
    Red:["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter" , "Davis", "Alewife"]

    Green:["Government Center", "Park Street", "Boylston" , "Arlington", "Copley", "Hynes", "Kenmore"],
    Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
}

def stops_between_stations(stop1, Line1, stop2, Line2)

    if(line1 == line2){
        trip1 = oneLine(stop1, stop2, line2)
print trip1       
        
    }else (line1 != line2){
        trip1 = oneLine(stop1, "Park Street",  line1)

        trip2 = oneLine("Park Street", stop2, line2)

end
end
p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
p stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6

