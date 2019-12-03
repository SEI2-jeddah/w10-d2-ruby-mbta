# stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
# stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
# stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6

########################################################################

@Lines = {
"red" => ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
"green" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
"orange" = >["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
}


def stop_b_stations(s_line, s_station,e_line,e_station)

    res = 0

    if
         s_line == e_line
        if
             @Lines[s_line].index(e_station) > @Lines[s_line].index(s_station)
            res = @Lines[s_line].index(e_station)-@Lines[s_line].index(s_station)

        else
            res = @Lines[s_line].index(s_station) - @Lines[s_line].index(e_station)
        end
    
        p results
   
    end 

    if
         s_line != e_line
        res = @Lines[s_line].index("Park Street") - @Lines[s_line].index(s_station)
        res = res + @Lines[e_line].index(e_station) - @Lines[e_line].index("Park Street")
      p res