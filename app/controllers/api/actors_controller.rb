class Api::ActorsController < ApplicationController
  before_action :authenticate_admin, :except => [:index, :show]

  def index
    @actors = Actor.all.order(:age => :desc)
    render "index.json.jb"
  end

  def show
    @actor = Actor.find_by(:id => params[:id])
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
      :first_name => params[:first_name],
      :last_name => params[:last_name],
      :known_for => params[:known_for],
      :gender => params[:gender],
      :age => params[:age],
      :movie_id => params[:movie_id]
    )
    # DON'T FORGET TO SAVE THE NEWLY CREATED RECORD. RECORD WILL ONLY SAVE IF VALIDATIONS PASS.
    # IF @actor.save is true, the @actor.save method will run.
    if @actor.save
      render "show.json.jb"
    else
      render :json => { :errors => @actor.errors.full_messages }, :status => 406
    end
  end

  def update
    @actor = Actor.find_by(:id => params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    @actor.movie_id = params[:movie_id] || @actor.movie_id
    
    # DON'T FORGET TO SAVE THE NEWLY CREATED RECORD
    if @actor.save
      render "show.json.jb"
    else
      render :json => { :errors => @actor.errors.full_messages }, :status => 406
    end
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render :json => { :message => "Actor record was destroyed!" }
  end


end
