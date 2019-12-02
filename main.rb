line = {

    red: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter","Davis","Alewife"],
    green: ["Government Center", "Park Street", "Boylston", "Arlington","Copley","Hynes","Kenmore" ],
    orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown","Back Bay","Forest Hills"]

}

def stops_between_stations (sl,sp,el,ep,line)

    count = 0
      if(sl==el)
        count= line[sl.to_sym].index(ep)-line[sl.to_sym].index(sp)
        count = count.abs
        p count
      end 
      if(sl!=el)
        count= line[sl.to_sym].index("Park Street")-line[sl.to_sym].index(sp)
        count=count+line[el.to_sym].index(ep)-line[el.to_sym].index("Park Street")
        p count.abs
      end 
    end

stops_between_stations('red', 'South Station', 'green', 'Kenmore',line)