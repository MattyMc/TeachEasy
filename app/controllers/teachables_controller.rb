class TeachablesController < ApplicationController

def create
  @teachable = Teachable.new(params[:teachable])
  
  @test = @teachable.content
  
  if @teachable.save then
    @test = "YES"
    
    respond_to do |format| #format takes on the action name! (it seems?)
      format.html #wtf does this do?
      format.js
    end
    
  end
  

  
  #redirect_to :back
end

def teachable_dropped
  @teach_id = params[:drag_id].gsub("teachable-","").to_i
  @week_id = params[:drop_id].gsub("week-","").to_i
  #
  
  @teachable_dropped = Teachable.find(@teach_id)
  Rails.logger.debug "!!!!! THE OBJECT IS #{@teach_id.class} \n"  
  
  @teachable_dropped.week_id = @week_id
  @teachable_dropped.save
  
  
  
  respond_to do |format| 
    format.js
  end
  
  
end


end
