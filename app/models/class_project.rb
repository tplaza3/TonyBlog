class ClassProject < ActiveRecord::Base
  attr_accessible :category, :name
  
  validates :name, :presence => true
  validates :category, :presence => true
end
