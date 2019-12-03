 n = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
 l = ["8th", "6th", "Union Square", "3rd", "1st"]
 six = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
def planTrip(startPosion, startStaion, endPosion, endStaion) 
  steps = 0
 
    if (startPosion != endPosion) 
      firstPoint = startPosion.indexOf(startStaion)
    unPoint = startPosion.indexOf("Union Square")
        sameline(firstPoint,unPoint,startPosion)
  unNextPoint = endPosion.indexOf("Union Square")
  puts("you must change in Union Square")
       newpoint = endPosion.indexOf(endStaion)
        sameline(unNextPoint,newpoint,endPosion)
        
    end
    if startPosion == endPosion
        

           nextPoint = startPosion.indexOf(startStaion)
         newpoint = startPosion.indexOf(endStaion)
            sameline(nextPoint, newpoint)
            sameline(nextPoint, newpoint,startPosion)
        end
    end

    def sameline(nextPoint, newpoint,line) 
        for (i = 0; i <= line.indexOf('Union Square'); i++) 
        for (i = 1; i <= line.indexOf('Union Square'); i++) 
            if (nextPoint > newpoint) 
                puts("You should move to " + line[nextPoint--])
                nextPoint = line.indexOf(line[nextPoint--])
                steps++
            end
            if (nextPoint < newpoint) 
                puts("You should move to " + line[nextPoint++])
                nextPoint = line.indexOf(line[nextPoint++])
                steps++
            end
            if (nextPoint == newpoint) 
               puts("You are in " + line[nextPoint])
                break;
            end
        end
    end
 puts  ("total steps is " + steps)
end
planTrip(six, "Astor Place", n, "34th") 

planTrip(n, "Times Square", n, "34th")