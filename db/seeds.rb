Genre.create!([
  { name: "rom-com" },
  { name: "coming of age" },
  { name: "action" },
])
Movie.create!([
  { title: "running out of ideas", year: 2003, plot: "for movies", director: nil, english: true },
  { title: "another pretty decent", year: 2005, plot: "summer flick!", director: nil, english: true },
  { title: "Return of the Ninjas", year: 2019, plot: "the ninjas are back ! and they're not happy after what happened in the first movie", director: "erik alvar", english: false },
  { title: "11 churros", year: 2019, plot: "this movie doesn't really have a plot ", director: "JJ abrohms", english: false },
  { title: "hunt for the wilderpeople", year: 2016, plot: "boy makes a run away from the city in favor of the bush", director: "taika waititi", english: true },
  { title: "Dazed and Confused", year: 1993, plot: "graduating class celebrates the last day of high school and ponders the days ahead", director: "Richard linklater", english: true },
  { title: "is this thing on?", year: 2001, plot: "updated this one", director: "mark francisco", english: true },
  { title: "12 churros", year: 2020, plot: "there needs to be more churro stands . where can someone get a churro around here?", director: "JJ samuel", english: true },
  { title: "13 Xurros", year: 2021, plot: "the long awaited sequel is finally here", director: "erik alvar", english: true },
  { title: "kangaroo jack", year: 2003, plot: "2 friends put the money in the jacket and the jacket on the kangaroo, then the kangaroo went hopping away.", director: "edd eddy", english: true },
  { title: "stylistic movie", year: 2015, plot: "derivative attempt to create experimental media, resulting in drivel ad nauseum", director: "mark frandisco", english: true },
])
MovieGenre.create!([
  { movie_id: 6, genre_id: 1 },
  { movie_id: 7, genre_id: 1 },
  { movie_id: 1, genre_id: 2 },
  { movie_id: 2, genre_id: 3 },
  { movie_id: 4, genre_id: 3 },
  { movie_id: 8, genre_id: 3 },
  { movie_id: 10, genre_id: 2 },
  { movie_id: 11, genre_id: 2 },
  { movie_id: 6, genre_id: 2 },
  { movie_id: 6, genre_id: 3 },
  { movie_id: 8, genre_id: 2 },
])
Actor.create!([
  { first_name: "Scarlett", last_name: "Johansson", known_for: "Jojo Rabbit", gender: nil, age: 39, movie_id: 2 },
  { first_name: "Olga", last_name: "Prasongsanti", known_for: "Curse of the World", gender: "female", age: 41, movie_id: 6 },
  { first_name: "Célina", last_name: "Brožová", known_for: "I Married a Thief", gender: "female", age: 22, movie_id: 7 },
  { first_name: "jj", last_name: "abrohms", known_for: "end game 3", gender: nil, age: 41, movie_id: 1 },
  { first_name: "Tom", last_name: "Cruise", known_for: "Top Gun", gender: nil, age: 50, movie_id: 1 },
  { first_name: "René", last_name: "Čapek", known_for: "Pickpocket 2: Electric Boogaloo", gender: "female", age: 22, movie_id: 8 },
  { first_name: "Fryderyk", last_name: "Kongsangchai", known_for: "Electric Women", gender: "male", age: 42, movie_id: 8 },
  { first_name: "jack", last_name: "black", known_for: "school of rock", gender: "male", age: 54, movie_id: 2 },
  { first_name: "Janina", last_name: "Kraiputra", known_for: "Case of the Missing Pickpocket", gender: "female", age: 28, movie_id: 10 },
  { first_name: "Aurélie", last_name: "Beranová", known_for: "The Electric Clash from Hell", gender: "other", age: 36, movie_id: 10 },
  { first_name: "Marcel", last_name: "Burda", known_for: "Flying Mutant", gender: "male", age: 43, movie_id: 4 },
  { first_name: "Martin", last_name: "Čermák", known_for: "Monster 2: Electric Boogaloo", gender: "male", age: 47, movie_id: 4 },
  { first_name: "bartholomew", last_name: "dickerson", known_for: "suburban road rage 3D", gender: "male", age: 62, movie_id: 6 },
  { first_name: "asfas", last_name: "dickersonsfgdfsf", known_for: "sdfghndttr", gender: "male", age: 54, movie_id: 8 },
  { first_name: "tr", last_name: "dickerrttrtrsonsfgdfsf", known_for: "rt", gender: "male", age: 544, movie_id: 8 },
])

User.create!([
  { name: "guest", email: "guest@example.com", password_digest: "$2a$12$WxDKGQKcNxGRNXJI8RrP1.gZRdTsu1oqNPDjO8YdrAw45UJskMIw6", admin: false },
  { name: "mark", email: "mark@example.com", password_digest: "$2a$12$T3nOfDtoM36g4QwS9htl/.2sJsEZ5EtroQtnvxXwACS59HrF5tvJu", admin: true },
  { name: "mark", email: "m@example.com", password_digest: "$2a$12$nzzU2cS6V5FEFaQ/swS4qeS0kJv0M4areayh3PzPPMnw0QgvGuphm", admin: false },
  { name: "Hackerman", email: "h@example.com", password_digest: "$2a$12$er3kgAgg.RDG5P2jcrp5U.XBeYyYNGNRKYoPoTQ142LR56R4IDsQG", admin: false },
  { name: "z z ", email: "z@example.com", password_digest: "$2a$12$hh8nYiYSDe6U3ueIB1aIG.KTXUd1sWuLClETawiv2rD8Ysimgkdta", admin: false },
])
