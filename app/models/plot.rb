class Plot < ActiveRecord::Base
  
  belongs_to :season
  belongs_to :farm
  belongs_to :lease
  belongs_to :plant
  has_many :crops
  
end
