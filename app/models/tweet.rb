class Tweet < ActiveRecord::Base
  attr_accessible :status

  validates :status, :presence => true
  
  has_many :answers
  
end
