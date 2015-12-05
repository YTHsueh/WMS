class Buy < ActiveRecord::Base
  belongs_to :project 
  belongs_to :procure 
end
