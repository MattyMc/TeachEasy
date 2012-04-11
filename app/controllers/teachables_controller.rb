class TeachablesController < ApplicationController

def create
  @teachable = Teachable.new(params[:teachable])
  
  @test = @teachable.content
  
  if @teachable.save then
    @test = "YES"
  end
  
  respond_to do |format|
    format.html #wtf does this do?
    format.js
  end
  
  #redirect_to :back
end


end
