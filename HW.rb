@lines = {
    "Red" => ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
    "Green" =>["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
    "Orange" => ["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]
}

def forOneLine(line1, location, line2, destination)

    stops = 0
    stations = []

    if line1 == line2
        startpoint = @lines[line1].index(location)
        endpoint =  @lines[line1].index(destination)

        if startpoint < endpoint
        stops = endpoint - startpoint

        for i in startpoint..endpoint do
            stations.push(@lines[line1][i])
          end

        else
            stops = startpoint-endpoint

            for i in startpoint.downto(endpoint) do
                stations.push(@lines[line1][i])
              end
        end

        string = ""
        stations.each_with_index { |val,index| 
            if index == stations.length-2
                string = string + val+" and "
            elsif index == stations.length-1
                string = string + val+"."
            else
                string = string + val +", "
            end
             }
             puts "You must travel through the following stops on the #{line1} line:"
             puts string
             puts "#{stops} in total"
            end
end

forOneLine('Red', 'Alewife', 'Red', 'Alewife') 
puts ""
forOneLine('Red', 'Alewife', 'Red', 'South Station')