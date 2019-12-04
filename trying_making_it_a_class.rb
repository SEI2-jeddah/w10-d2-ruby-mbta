
# @lines = {
#   "red_line" => ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
#   "green_line" => ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
#   "orange_line" => ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
# }

# class MBTA
#     def initialize
#       sentence = "You must travel through the following stops on the "
#       stops = 0
#       stops_arr = []
#     end
#     def same_line(current_line, current_stop, dest_line, dest_stop)
#       ##SAME LINE
#       currentIndex = @lines[current_line].index(current_stop)
#       destIndex = @lines[current_line].index(dest_stop)
#     if current_line == dest_line
#       ##going forward
#       if destIndex > currentIndex
#         stops = destIndex - currentIndex
#         for i in 0..stops
#           stops_arr.push(@lines[current_line][i])
#         end
#         ##going backwards
#       else
#         stops = currentIndex - destIndex
#         for i in currentIndex.downto(destIndex)
#             stops_arr.push(@lines[current_line][i])
#         end
#       end
#     end
#     sentence = "You must travel through the following stops on the "
#     for stop in stops_arr do
#         sentence= sentence+stop+","
#     end
#     p sentence
#     p "Total stops #{stops}"
#   end
# end
# MBTA.new.same_line("red_line", "Kendall", "red_line", "South Station")
