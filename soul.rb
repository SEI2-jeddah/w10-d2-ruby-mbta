@line = {
    "red" =>  ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
          "green" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
          "orange" => ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
}

    def stops_between_stations(start_line, start_station, end_line, end_station)
  
        results = 0
        if start_line == end_line
            
            if @line[start_line].index(end_station) > @line[start_line].index(start_station)
                results = @line[start_line].index(end_station)-@line[start_line].index(start_station)
            else
                results = @line[start_line].index(start_station) - @line[start_line].index(end_station)
            end

      
          p results
        end 
        if start_line != end_line

            
            results = @line[start_line].index("Park Street") - @line[start_line].index(start_station)
           

          
            results = results + @line[end_line].index(end_station) - @line[end_line].index("Park Street")
          p results
        end 
      end
  
      
      stops_between_stations('red', 'Alewife', 'red', 'Alewife') 
    stops_between_stations('red', 'Alewife', 'red', 'South Station') 
    stops_between_stations('red', 'South Station', 'green', 'Kenmore') 