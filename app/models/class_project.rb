class ClassProject < ActiveRecord::Base
  attr_accessible :category, :featured, :name
  
  validates :name, :presence => true
  validates :category, :presence => true
  
  scope :f_article
  
end
