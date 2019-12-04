# "Park Street" is the middle stop 
# to print it latter on 

#this counts every stop up and down 
def singleLine(line, from, to)
    ans = ''
  
    reapet = line.index(from) -  line.index(to)
    if reapet > 0 
        steps = reapet

        i = line.index(from)
        reapet.times{
            i += 1
            ans +=  "#{line[i]}, "
        }
    else

    reapet = line.index(to) - line.index(from)
    steps = reapet
        i = line.index(to)
        reapet.times{
            i -= 1
            ans +=  "#{line[i]}, "
        }

    end

    return [ans, steps]

   end
#  start the main function 
def stops_between_stations(startLine, startPos, endLine, endPos)
#defining the lines  
redline = ["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"]
greenline = ["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"]
orangeline = ["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"]

refer = {
"Red" => redline,
"Green" => greenline,
"Orange" => orangeline,
} 
    intro1 = "You must travel through the following stops on the #{startLine}:"
    intro2 = "Your trip continues through the following stops on #{endLine}:" 
    
    #if you are in the same line then just count it onece 
if startLine == endLine
singleLine(refer[startLine], startPos, endPos)
else
p intro1
arr1 =  singleLine(refer[startLine], startPos, "Park Street")
p arr1[0]
p intro2
arr2 = singleLine(refer[endLine], "Park Street", endPos)
p arr2[0]
p "#{arr1[1]+arr2[1]} stops in total."
end

end
stops_between_stations('Red', 'Harvard', "Orange", 'Chinatown')