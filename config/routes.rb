Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
  # ACTORS
    # INDEX
    get "/actors" => "actors#index"
    # SHOW
    get "/actors/:id" => "actors#show"
    # CREATE
    post "/actors" => "actors#create"
    # UPDATE
    patch "/actors/:id" => "actors#update"
    # DELETE
    delete "/actors/:id" => "actors#destroy"


  # MOVIES
    # INDEX
    get "/movies" => "movies#index"
    # SHOW
    get "/movies/:id" => "movies#show"
    # CREATE
    post "/movies" => "movies#create"
    # UPDATE
    patch "/movies/:id" => "movies#update"
    # DELETE
    delete "/movies/:id" => "movies#destroy"

  end
end
