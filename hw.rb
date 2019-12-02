
    @lines = {
    "Red" => ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"],
    "Green" =>["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"],
    "Orange" => ["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]}

@intersection_point = "Park Street" 

def stops_between_stations(currPath, currLocation, destinationPath, destination)
    
    stops = 0
    stations = []

    ### same line ###
    if currPath == destinationPath
        startIndex = @lines[currPath].index(currLocation)
        endIndex =  @lines[currPath].index(destination)

        if startIndex < endIndex
        stops = endIndex - startIndex

        for i in startIndex..endIndex do
            stations.push(@lines[currPath][i])
          end

        else
            stops = startIndex-endIndex
            
            for i in startIndex.downto(endIndex) do
                stations.push(@lines[currPath][i])
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
             puts "You must travel through the following stops on the #{currPath} line:"
             puts string
             puts "#{stops} in total"

        ### different lines ###
    else  
        startIndex =@lines[currPath].index(currLocation)
        intersectionIndex = @lines[currPath].index(@intersection_point)
       

        if intersectionIndex > startIndex
            stops = intersectionIndex-startIndex

            for i in startIndex..intersectionIndex do
                stations.push(@lines[currPath][i])
              end
        else
            stops = startIndex-intersectionIndex

            for i in startIndex.downto(intersectionIndex) do
                stations.push(@lines[currPath][i])
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

             puts "You must travel through the following stops on the #{currPath} line:"
             puts string
             puts "Change at #{@intersection_point}."

             stations = []

        intersectionIndex = @lines[destinationPath].index(@intersection_point)
        endIndex = @lines[destinationPath].index(destination)

        if endIndex > intersectionIndex
            stops = stops + (endIndex-intersectionIndex)
            intersectionIndex +=1

            for i in intersectionIndex..endIndex do
                stations.push(@lines[destinationPath][i])
            end
        else
            stops = stops + (intersectionIndex-endIndex)
                intersectionIndex -=1
                for i in intersectionIndex.downto(endIndex) do
                    stations.push(@lines[destinationPath][i])
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
             puts "Your trip continues through the following stops on #{destinationPath} line:"
             puts string
             puts "#{stops} in total"
        
    end
end


puts "Enter the current path"
currPath = gets.chomp
puts "Enter the current station"
currStation = gets.chomp
puts "Enter the destination path"
destPath = gets.chomp
puts "Enter the destination station"
destStation = gets.chomp

stops_between_stations(currPath,currStation,destPath,destStation)
puts ""
stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
puts ""
stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
puts ""
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6

