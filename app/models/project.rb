class Project < ActiveRecord::Base

# requirements of the project 
  has_many :requirements 
  accepts_nested_attributes_for :requirements

# 進料單，入庫單，出料單
  has_many :in_procures, through: :in_multi_projects   

# modification history 
  has_paper_trail


end
