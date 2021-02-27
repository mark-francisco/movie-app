class Api::ActorsController < ApplicationController
  def actor_id_action
    if params[:id]
      @id = params[:id]
      @actor = Actor.find(@id).slice(:id, :first_name, :last_name, :known_for)
    else
      @actor = "no id was entered..."
    end
    render "display_actor_by_id.json.jb"
  end
end
