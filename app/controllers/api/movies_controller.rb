class Api::MoviesController < ApplicationController
  def list_all_movies  
    @movies = Movie.all
    @movies_mapped = []
    @movies.map { |movie|
      @movies_mapped << {
        :title => movie.title,
        :year => movie.year,
        :plot => movie.plot }
    }
    render "all_movies_view.json.jb"
  end

  def list_movie_by_id
    if params["id"]
      @movie = Movie.find(params["id"]).slice(:title, :year, :plot)
    else
      @movie = "please use the id param in the browser to select a movie from the database"
    end
    render "movie_by_id_view.json.jb"
  end

end
