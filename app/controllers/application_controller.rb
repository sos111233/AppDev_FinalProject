class ApplicationController < ActionController::Base
   
  def index
    render({:template=>"home/input.html.erb" })
    end
  def  show
    @flight_depart= params[:date]
    @flight_depart_week = params[:date].to_date.cwday
    render({:template=>"home/new.html.erb" })
  end

  def holiday 
    @flight_depart= params[:date]
    @flight_depart_week = params[:date].to_date.cwday
    @number_of_holidays= params[:holiday]
    @weekday_factor = (@number_of_holidays.to_i+3- @flight_depart_week.to_i)/5
    @weekend_factor = (@number_of_holidays.to_i+3-1)/5
    render({:template=>"home/holiday.html.erb" })
  end

  def home
    render ({:template=>"home/home.html.erb" })
  end

  def flatpickr
    @holidays = params[:holidays]
    @flight =params[:flight]
    @weekend = [6,7]
    @count = 0
    render ({:template=>"home/flatpickr.html.erb" }) 
  
  end 

end
