

$red_line=["South Station" ,"Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"]
puts "select the starting  staion  "
start = gets.chomp
puts "select the end staion "
ends = gets.chomp

x1 = $red_line.index(start)
y1 = $red_line.index(ends)
arr=[]

if x1 >= y1
     arr.push($red_line[y1..x1].reverse)
else

    arr.push($red_line[x1..y1])
end
puts "count of station is #{arr.length}"
print arr 
# Kendall
# Alewife


#  metro = {
# Red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
# Green: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"],
# Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"]}

# puts metro[:Red][1]
