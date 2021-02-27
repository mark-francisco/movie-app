Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/actor_id" => "actors#actor_id_action"
    get "/actor_id/:id" => "actors#actor_id_action"
    post "/actor_id_body_param" => "actors#actor_id_action"

    get "/all_movies" => "movies#list_all_movies"

    get "/movie_by_id" => "movies#list_movie_by_id"

  end
end
