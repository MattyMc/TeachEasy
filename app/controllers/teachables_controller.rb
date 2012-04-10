class TeachablesController < ApplicationController

def create
  @teachable = Teachable.new(params[:teachable])
  
  @test = @teachable.content
  
  if @teachable.save then
    @test = "YES"
  end
  redirect_to :back
end


end
