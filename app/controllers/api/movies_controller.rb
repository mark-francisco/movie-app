class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, :except => [:index, :show]

  def index
    # @movies = Movie.all
    @movies = Movie.where(:english => true)
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(:id => params[:id])
    render "show.json.jb"
  end

  def create
    @movie = Movie.new(
      :title => params[:title],
      :year => params[:year],
      :plot => params[:plot],
      :director => params[:director],
      :english => params[:english]
    )
    # DON'T FORGET TO SAVE THE NEWLY CREATED RECORD. RECORD WILL ONLY SAVE IF VALIDATIONS PASS.
    if @movie.save
      render "show.json.jb"
    else
      render :json => { :errors => @movie.errors.full_messages }, :status => 406
    end
  end

  def update
    @movie = Movie.find_by(:id => params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot 
    @movie.director = params[:director] || @movie.director 
    @movie.english = params[:english] || @movie.english 

    # DON'T FORGET TO SAVE THE NEWLY CREATED RECORD. RECORD WILL ONLY SAVE IF VALIDATIONS PASS.
    if @movie.save
      render "show.json.jb"
    else
      render :json => { :errors => @movie.errors.full_messages }, :status => 406
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render :json => { :message => "Movie was destroyed!" }
  end

end
