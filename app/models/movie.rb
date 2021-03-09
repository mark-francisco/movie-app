class Movie < ApplicationRecord

  validates :title, :length => { :minimum => 2 }
  validates :year, :numericality => { :greater_than_or_equal_to => 1800, :less_than_or_equal_to => Date.today.year }
  validates :director, :length => { :minimum => 4 }
  

  # Movie HAS MANY Actors
  has_many :actors

  # returns array of many actors
  def actors
    Actor.where(:movie_id => id)
  end
end
