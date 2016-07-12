# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all
Category.destroy_all

categories = ["Animación", "Acción", "Comedia", "Drama", "Terror"]

c = []

categories.each do |i|
  c << Category.create(name: i)
end

5.times do
  Movie.create(name: Faker::Superhero.name, recommended: true, category: c.sample)
end

5.times do
  Movie.create(name: Faker::Superhero.name, recommended: false, category: c.sample)
end