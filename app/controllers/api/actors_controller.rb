class Api::ActorsController < ApplicationController
  def actor_id_action
    @id = 5
    @actor = Actor.find(@id)
    render "display_actor_by_id.json.jb"
  end
end
