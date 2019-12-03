Mbta = {
    Red: [ "South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
    Green: [ "Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
    Orange: [ "North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]
  }

def stops_between_stations(line1, stop1, line2, stop2) 
    line_one = Mbta[line1.to_sym]
    line_two = Mbta[line2.to_sym]
    @trip_stop = ''
    @stop = 0

    def for_one_line(starting, finish, line)
        trip = ''
        position = Mbta[line.to_sym].index(starting)

        if Mbta[line.to_sym].index(starting) < Mbta[line.to_sym].index(finish)
            position = position+1
            position.times { |i|
                if position == Mbta[line.to_sym].index(finish) + 1
                    @trip_stop += Mbta[line.to_sym][i] + ' '
                end 
            }
            stops = @stop + Mbta[line.to_sym].index(finish) - Mbta[line.to_sym].index(starting) 

        elsif Mbta[line.to_sym].index(starting) > Mbta[line.to_sym].index(finish)
            position = position+1
            position.times { |i|
            @trip_stop += Mbta[line.to_sym][i] + '  '
            }
            stops = @stop + Mbta[line.to_sym].index(starting) - Mbta[line.to_sym].index(finish) 
        else
            stops = 0
        end
    end

    if line1 == line2 
        stops = for_one_line(stop1, stop2, line2)
        puts "You must travel through the following stops on the #{line1} line: "
        puts @trip_stop
        puts "#{stops} stops in total."
    else
        puts "You must travel through the following stops on the #{line1} line:"
        trip_one = for_one_line(stop1, 'Park Street', line1)
        puts 'Change at Park Street.'
        puts "Your journey continues through the following stops on #{line2} line:"
        trip_two = for_one_line('Park Street', stop2, line2)
        puts "#{trip_one + trip_two} stops in total."
    end
end

stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
puts '---'
stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
puts '---'
stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')