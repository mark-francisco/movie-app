class Movie < ApplicationRecord

  validates :title, :length => { :minimum => 2 }
  validates :year, :numericality => { :greater_than_or_equal_to => 1800, :less_than_or_equal_to => Date.today.year }
  validates :director, :length => { :minimum => 4 }
  
  has_many :movie_genres
  has_many :genres, :through => :movie_genres

  def genre_names
    # return ALL of the Movie_Genre instances that belong to that Movie. this is possible because Movie has_many :movie_genres, which means that Movie can access its .movie_genres method.
    movie_genres.map { |movie_genre|
      # for each movie_genre that you get back, return the "name" property from the Genre instance that owns that movie_genre block instance. (Remember that MovieGenre belongs_to :Genre, which means that movie_genre can access its .genre method).
      movie_genre.genre.name
    }
  end

  # Movie HAS MANY Actors
  has_many :actors

  # returns array of many actors
  def actors
    Actor.where(:movie_id => id)
  end
end
