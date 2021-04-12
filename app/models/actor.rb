class Actor < ApplicationRecord

  # validates :first_name, :length => { :minimum => 2 }
  # validates :last_name, :length => { :minimum => 2 }
  # validates :known_for, :presence => true
  # validates :age, :numericality => { :greater_than_or_equal_to => 13 }

  # Actor BELONGS TO a Movie
  # The foreign key gets added to the table of the "many" thing
  belongs_to :movie

  # returns hash of one single movie
  def movie
    Movie.find_by(:id => movie_id)
  end

end
