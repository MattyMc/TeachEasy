class PagesController < ApplicationController
  def home
    @message = "Here we go Matt! Let's Bootstrap this shit!"
    @teachable = Teachable.new()
  end


end
