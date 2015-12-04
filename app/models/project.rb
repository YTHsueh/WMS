class Project < ActiveRecord::Base
# requirements of the project 
  has_many :requirements 
  accepts_nested_attributes_for :requirements

# modification history 
  has_paper_trail


end
