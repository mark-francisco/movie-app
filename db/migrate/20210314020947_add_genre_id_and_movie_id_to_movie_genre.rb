class AddGenreIdAndMovieIdToMovieGenre < ActiveRecord::Migration[6.1]
  def change
    add_column :movie_genres, :movie_id, :integer
    add_column :movie_genres, :genre_id, :integer
  end
end
