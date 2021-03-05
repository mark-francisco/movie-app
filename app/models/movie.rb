class Movie < ApplicationRecord

  validates :title, :length => { :minimum => 2 }
  validates :year, :numericality => { :greater_than_or_equal_to => 1800, :less_than_or_equal_to => Date.today.year }
  validates :director, :length => { :minimum => 4 }
  
end
