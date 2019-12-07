class Subway
    def Stops(startline, startstation, endline, endstation)

    lines={
    red: [ "South Station" ,"Park Street" , "Kendall" ,"Central" , "Harvard" , "Porter" , "Davis" ,"Alewife"],
    green: ["Government Center", "Park Street", "Boylston", "Arlington","Copley","Hynes","Kenmore" ],
    orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
    } 
       
    steps = 0
      if startline == endline
        puts (lines[startline.to_sym].index(endstation)) - (lines[startline.to_sym].index(startstation))
      end 

      if startline!=endline 
        steps = (lines[startline.to_sym].index("Park Street")) - (lines[startline.to_sym].index(startstation))
        steps += (lines[endline.to_sym].index(endstation)) - (lines[endline.to_sym].index("Park Street"))
        puts steps
      end 
    end
end   

# stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
# stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
# stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6

