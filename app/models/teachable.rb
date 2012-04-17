class Teachable < ActiveRecord::Base
  attr_accessible :content, :week_id
  
  belongs_to :week
  
end
