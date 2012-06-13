class Lease < ActiveRecord::Base
  
  has_many :plots
  
end
