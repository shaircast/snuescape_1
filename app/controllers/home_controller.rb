class HomeController < ApplicationController
  def main
  end
  
  
  
  
  def firstdbgenerate
    for datenum in 17..20# 이건 1~15 범위로(점 두 개는 include)
      for timenum in 11..19
        book = Table.new
        book.date = datenum
        book.time = timenum
        book.booked = false
        book.name = ""
        book.save
      end
    end
    redirect_to "/home/main"
  end
  
  
  
  
  

  def admin
  end
  
  
  
  def updateadmin
    @updatedate = params[:date]
    @updatetime = params[:time]
    @updatepost = Table.where("date = ? AND time = ?", params[:date], params[:time]).first
    
  end
  
  def reallupdate
    @book = Table.find(params[:post_id])
    @bookname = params[:bookname]
    
    if @bookname == ""
      @book.name = ""
      @book.booked = false
    else
      @book.name = @bookname
      @book.booked = true
    end
    
    @book.save
    
    redirect_to "/sryhereisnoadmin"
  end
  
end
