@mTA = {
    "red" =>  ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
          "green" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
          "orange" => ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
}

def Plantrip(line1, station1, line2, station2)
    stops= 0;
    if line1 == line2
        if  @mTA[line1].index(station2) > @mTA[line1].index(station1)
            stops = @mTA[line1].index(station2)-@mTA[line1].index(station1)
            p "hla"


            
        
    else
        stops = @mTA[line1].index(station1) - @mTA[line1].index(station2)
    end
    
    
    p stops
    
end

if line1 != line2
    stops = @mTA[line1].index("Park Street") - @mTA[line1].index(station1)
           

          
    stops = stops + @mTA[line2].index(station2) - @mTA[line2].index("Park Street")

    p stops
end
end

Plantrip('red', 'Alewife', 'red', 'Alewife') 
Plantrip('red', 'Alewife', 'red', 'South Station') 
Plantrip('red', 'South Station', 'green', 'Kenmore') 