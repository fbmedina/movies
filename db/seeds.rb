# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
Movie.destroy_all

categories = ["Animación", "Acción", "Comedia", "Drama", "Terror"]

c = []

categories.each do |i|
  c << Category.create(name: i)
end

5.times do
  Movie.create(name: Faker::Superhero.name, recommended: true, category_id: c.sample.id)
end

5.times do
  Movie.create(name: Faker::Superhero.name, recommended: false, category_id: c.sample.id)
end