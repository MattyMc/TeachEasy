class PagesController < ApplicationController
  def home
    @message = "Here we go Matt! Let's Bootstrap this shit!"
    @teachable = Teachable.new()
    
    @last_20_teachables = Teachable.last(20)
  end


end
