class Plant < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  
  belongs_to :plantstype
  has_many :plots
  
end
