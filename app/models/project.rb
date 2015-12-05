class Project < ActiveRecord::Base

# requirements of the project 
  has_many :requirements 
  accepts_nested_attributes_for :requirements

# 進料單，入庫單，出料單
  has_many :buys 
  has_many :procures, through: :buys   

# modification history 
  has_paper_trail


end
