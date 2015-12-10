class Procure < ActiveRecord::Base
  has_many :buys 
  has_many :projects, through: :buys
  accepts_nested_attributes_for :projects, reject_if: :all_blank, allow_destroy: :true 
end
