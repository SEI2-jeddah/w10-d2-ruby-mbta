@lines = {
  "red_line" => ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
  "green_line" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
  "orange_line" => ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
}

def stops_between_stations()

  puts "enter your current line"
  current_line = gets.chomp
  puts " enter your current stop"
  current_stop = gets.chomp
  puts "enter your destination line"
  dest_line = gets.chomp
  puts "enter your destination stop"
  dest_stop = gets.chomp

  stops = 0
  stops_arr = []
  sentence = "You must travel through the following stops on the "
  sentence2 = "Your trip continues on the following path on the "

  ##SAME LINE
  currentIndex = @lines[current_line].index(current_stop)
  destIndex = @lines[current_line].index(dest_stop)
  intersection = "Park Street"
  if current_line == dest_line
    ##going forward
    if destIndex > currentIndex
      stops = destIndex - currentIndex
      for i in 0..stops
        stops_arr.push(@lines[current_line][i])
      end
      ##going backwards
    else
      stops = currentIndex - destIndex
      for i in currentIndex.downto(destIndex)
        stops_arr.push(@lines[current_line][i])
      end
    end

    for stop in stops_arr
      sentence = sentence + stop + ","
    end
    p sentence
    p "Total stops #{stops}"

    ##DIFFERENT LINES
  else
    currentIndex = @lines[current_line].index(current_stop)
    intersectionIndex = @lines[current_line].index(intersection)
    if intersectionIndex > currentIndex
      stops = intersectionIndex - currentIndex
      for i in currentIndex..intersectionIndex
        stops_arr.push(@lines[current_line][i])
      end
    else
      stops = currentIndex - intersectionIndex
      for i in currentIndex.downto(intersectionIndex)
        stops_arr.push(@lines[current_line][i])
      end
    end
    for stop in stops_arr
      sentence = sentence + stop + ","
    end
    p sentence
    p "change at #{intersection}"
    stops_arr2 = []
    intersectionIndex = @lines[dest_line].index(intersection)
    destIndex = @lines[dest_line].index(dest_stop)

    if destIndex > intersectionIndex
      stops = stops + (destIndex - intersectionIndex)
      intersectionIndex += 1

      for i in intersectionIndex..destIndex
        stops_arr2.push(@lines[dest_line][i])
      end
    else
      stops = stops + (intersectionIndex - destIndex)
      intersectionIndex -= 1
      for i in intersectionIndex.downto(destIndex)
        stops_arr2.push(@lines[dest_line][i])
      end
    end
    for stop in stops_arr2
        sentence2 = sentence2 + stop + ","
      end
    p sentence2
    p "Total stops #{stops}"
  end
end

# stops_between_stations("red_line","South Station","red_line","Kendall")
# stops_between_stations("red_line", "Kendall", "red_line", "South Station")
# stops_between_stations("red_line", "Kendall", "green_line", "Hynes")
stops_between_stations()
