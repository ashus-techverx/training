module CalenderHelper

  def calender (month, year)
  	current_date = Date.new(year,month,1)
  	#calender = link_to "Prev", "/calender/show?month=12&year=2013"
  	#calender += "</br>"
  	days_of_the_week = current_date.strftime("%w").to_i
  	calender = "<table border = '1'><tr>" 
  	# Calculating the the days of the week
      days = %w(sun  mon  tue  wed  thu  fri sat) 
        days.each  do |days| 
        	#Prints out days in a week
         calender += "<td>#{days}</td>"
        end
       calender += "<tr>"
     # Day of the week
       days_of_the_week.times do |days|
         calender += "<td>&nbsp</td>"
       end
      #Print Days of the week starting with 1
      (7 - days_of_the_week).times do |days|


      	calender += "<td>#{days + 1}</td>"
      end
       calender += "</tr>"
      calender += "</tr></table>"
      calender += link_to "Prev", "/calender/show/#{month - 1}/#{year}"

      return calender
     
  end


end


