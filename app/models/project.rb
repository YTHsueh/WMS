class Project < ActiveRecord::Base

# requirements of the project 
  has_many :requirements 
  accepts_nested_attributes_for :requirements, reject_if: :all_blank, allow_destroy: :true 

# 進料單，入庫單，出料單
  has_many :buys 
  has_many :procures, through: :buys   

  has_many :serials 
  has_many :materials, through: :serials 

# modification history 
  has_paper_trail


end
