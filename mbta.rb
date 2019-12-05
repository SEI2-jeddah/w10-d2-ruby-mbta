 n=["TimesQuer","34th","28th","23rd","Union Square","8th"];
 six = ["Grand Central","33rd","28th","23rd","Union Square","Astor Place"]
 l=["8th","6th","Union Square","3rd","1st"];
 start="33rd";
 end1 = "8th";

 planTrip("N","8th","N","TimesQuer");
 def planTrip(line11,start,line22,end)

    line1;
   line2;
    if(line11== "N")
       line1= n
     elsif(line11=="L")
      line1= l
     elsif(line11=="Six")
     line1= six
     end
    
     if(line22=="N")
       line2= n
     elsif(line22=="L")
     line2= l
     elsif(line22=="Six")
     line2= six
     end

     numOfstop=0;
     num1=line1.index start 
     num2=line1.index "Union Square"
     num3=line2.index end
     num4=line2.index "Union Square"
    
    numOfstop+=[num1,num2].max - [num1,num2].min
    numOfstop+=[num3,num4].max- [num3,num4].min
     string1= "";
     string2= "";

     if num1<num2 
        
          for i=num1;line1[i]!== "Union Square";i++ 
          
            if line1[i+1]!== "Union Square"
            string1+= line1[i+1] + " "
        
            end

        else 
           
              for i=num1;line1[i]!=="Union Square";i--
               
                 if (line1[i-1]!== "Union Square")
                   string1+= line1[i-1]
                  puts string1
                 end
                end
        end


        if num3>num4
            
              for(let i=num4;i< num3;i++ )
              
               
                 string2+=line2[i+1] + " "
        end
                
            
             else 
                 forlet i=num4;line2[i]!==line2[num3];i-- 
                       if line2[i]!== "Union Square"
                        string2 += line2[i] + " "
                        string2 += line2[num3] 
                       end
         
                       end

                       puts "You must travel through the following stops on the " + line11 +" "+ "line:" +" "+ string1+ " "  + "Union Square"
                       puts "Change at Union Square."
                       puts "our journey continues through the following stops:" + string2
                  
                      
                      puts numOfstop + " "+ "stops in total."
                      
 end



    