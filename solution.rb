

def planTrip(departureLine,departureStop,arrivalLine,arrivalStop)
    map={"Red"=> ["South Station","Park Street", "Kendall", "Central",  "Harvard", "Porter","Davis","Alewife"],
        "Green"=> ["Government Center","Park Street", "Boylston",  "Arlington", "Copley", "Hynes", "Kenmore"],
        "Orange"=> ["North Station","Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown","Back Bay","Forest Hills"] }
    intersection="Park Street"
    i=map[departureLine].index(departureStop)
    destinationIndex=map[arrivalLine].index(arrivalStop)
    path1=[]
    path2=[]
    text=''
    if departureLine!=arrivalLine
        text+="You must travel through the following stops on the " + departureLine+ " line:"
        while map[departureLine][i]!=intersection
            if map[departureLine].index(intersection)>i
                i+=1
            else
                i-=1
            end
            path1.push(map[departureLine][i])
        end
        i=map[arrivalLine].index(intersection)
        text+=path1.join(', ')+"."
        if i!=destinationIndex
            text+="Change at Union Square."
        end
    end

    while i!=destinationIndex
        if destinationIndex>i
            i+=1
        else
            i-=1
        end
        path2.push(map[arrivalLine][i])
    end
    if path2.length>=1
        text+="Your trip will include the following stops on the " +arrivalLine +" line: " + path2.join(', ')+ "."
    end
    text+=(path1.length+path2.length).to_s+" stops in total."
    return text
end
puts "----------- first test case ------------"
puts planTrip('Red', 'Alewife', 'Red', 'Alewife')
puts "----------- second test case ------------"
puts planTrip('Red', 'Alewife', 'Red', 'South Station')
puts "----------- third test case ------------"
puts planTrip('Red', 'South Station', 'Green', 'Kenmore')



# =begin
    
# //main logic file. Can be tested through the console.log lines without using the interface
# var intersection="Union Square"
# var map={
# N:["Times Square","34rd","28th","23rd",intersection,"8th"],
# L:["8th","6th",intersection,"3rd","1st"],
# Sixth:["Grand Central","33rd","28th","23rd",intersection,"Astor Place"],
# }
# function planTrip(departureLine,departureStop,arrivalLine,arrivalStop){
#     let i=map[departureLine].indexOf(departureStop);
#     let destinationIndex=map[arrivalLine].indexOf(arrivalStop);
#     let path=[];
#     let path2=[];
#     let text="";
#     if(departureLine!=arrivalLine){
#         console.log(text+="You must travel through the following stops on the " + departureLine+ " line:")

#         while(map[departureLine][i]!=intersection){
#             if(map[departureLine].indexOf(intersection)>i){
#                 i++;
#             } else{
#                 i--;
#             }
#             path.push(map[departureLine][i]);
#         }
#         i=map[arrivalLine].indexOf(intersection);
#         console.log(text+=path.join(', ')+ ".");
#         if(i!=destinationIndex){
#         console.log(text+="Change at Union Square.");
#     }
#     }
#     while(i!=destinationIndex){
#         if(destinationIndex>i){
#             i++;
#         } else{
#             i--;
#         }
#         path2.push(map[arrivalLine][i]);
#     }
#     if(path2.length>=1){
#     console.log(text+="Your trip will include the following stops on the " +arrivalLine +" line: " + path2.join(', ')+ ".");

#         }   
#      console.log(text+=path.length+path2.length+" stops in total.");
#     return text;
# }
# //Test values Sixth=6
# // planTrip("N", "Times Square", "Sixth", "33rd");
# // planTrip("N", "Times Square", "N", "28th");
# // planTrip("Sixth", "Astor Place", "L", "8th");
    
# end