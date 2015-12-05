class Procure < ActiveRecord::Base
  has_many :buys 
  has_many :projects, through: :buys
end
