class Buy < ActiveRecord::Base
  belongs_to :project 
  belongs_to :procure 
  accepts_nested_attributes_for :project 
end
