class AgeController < ApplicationController
  include ActionView::Helpers::DateHelper 

  def index
if params[:age] != nil
      @age = params[:age]
      @year = @age[:year]
      @month = @age[:month]
      @day = @age[:day]
      @birth = Time.mktime(@year, @month, @day)
      @birth_day = @birth.strftime("%A")
      
      @years_old = (Time.now-@birth)/(365.25*24*60*60)
      @months_old = ((Time.now-@birth)%(365.25*24*60*60))/((365/12)*24*60*60)
      @days_old = (((Time.now-@birth)%(365.25*24*60*60))%((365/12)*24*60*60))/(24*60*60)
      
   
      @seconds_old = Time.now-@birth
  
      @billion_seconds_old = @birth + 1_000_000_000
      
      @life_expectancy = @birth + (69.4*(365.25*24*60*60))
      @time_away_from_life_expectancy = (@life_expectancy - Time.now)/60/60/24
    end
  end
    
    

end
