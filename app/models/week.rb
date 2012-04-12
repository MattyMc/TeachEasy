class Week < ActiveRecord::Base
  attr_accessible :number, :topic
  
  #belongs_to :courses
  has_many :teachables
  
  
end
