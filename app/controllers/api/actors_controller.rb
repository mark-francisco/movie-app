class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
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
      :known_for => params[:known_for]
    )
    # DON'T FORGET TO SAVE THE NEWLY CREATED RECORD
    @actor.save
    render "show.json.jb"
  end

  def update
    @actor = Actor.find_by(:id => params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    
    # DON'T FORGET TO SAVE THE NEWLY CREATED RECORD
    @actor.save
    render "show.json.jb"
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render :json => { :message => "Actor record was destroyed!" }
  end


end
