class Teachable < ActiveRecord::Base
  attr_accessible :content
  
  belongs_to :week
  
end
