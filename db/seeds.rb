# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Actor.create(:first_name => "Scarlett", :last_name => "Johansson", :known_for => "Jojo Rabbit")
# Actor.create(:first_name => "Tom", :last_name => "Cruise", :known_for => "Top Gun")

# https://github.com/ffaker/ffaker/blob/main/REFERENCE.md
5.times do
  Actor.create(:first_name => FFaker::NameFR.first_name, :last_name => FFaker::NameCS.last_name, :known_for => FFaker::Movie.title)
  Actor.create(:first_name => FFaker::NamePL.first_name, :last_name => FFaker::NameTHEN.last_name, :known_for => FFaker::Movie.title)
end