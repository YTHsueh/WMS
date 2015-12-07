class Material < ActiveRecord::Base

# relationship with projects 
  has_many :serials 
  has_many :projects, through: :serials 

end
