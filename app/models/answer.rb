class Answer < ActiveRecord::Base
  attr_accessible :status, :tweet_id

  validates :status, :presence => true

  belongs_to :tweet
  
end
