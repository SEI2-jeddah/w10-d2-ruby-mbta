SUBWAYLINES = {
              Red: ["South Station","Park Street", "Kendall", "Central",  "Harvard", "Porter","Davis","Alewife"],
              Green: ["Government Center","Park Street", "Boylston",  "Arlington", "Copley", "Hynes", "Kenmore"],
              Orange: ["North Station","Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown","Back Bay","Forest Hills"] }

def stops_between_stations(startLine, startStation, endLine, endStation)
 
        startStationIndex = SUBWAYLINES[startLine.to_sym].index(startStation)
        endStationIndex = SUBWAYLINES[endLine.to_sym].index(endStation)

                if(startLine == endLine) 
                  return (startStationIndex - endStationIndex).abs
                end
        
        startLineParkStreetIndex = SUBWAYLINES[startLine.to_sym].index("Park Street")
        tripToParkStreet = (startStationIndex - startLineParkStreetIndex).abs
        
        endLineParkStreetIndex = SUBWAYLINES[endLine.to_sym].index("Park Street")
        tripToDestination = (endStationIndex - endLineParkStreetIndex).abs
        
        totalTrip = tripToParkStreet + tripToDestination
end
p stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
p stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
p stops_between_stations('Red', 'South Station', 'Green', 'Kenmore')