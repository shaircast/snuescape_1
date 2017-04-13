class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :showdata

  def showdata(date, time)
      @alldata = Table.all
      @alldata.each do |x|
        if x.date == date
          if x.time == time
            if x.booked == true
              return x.name.chars.first + "#" + x.name.chars.last
            else
              return "예약가능."
            end
          end
        end
      end
    
  end
  
end
