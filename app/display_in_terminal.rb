require "http"

# pp HTTP.get("http://localhost:3000/api/all_movies").parse
pp HTTP.get("http://localhost:3000/api/movie_by_id?id=2").parse