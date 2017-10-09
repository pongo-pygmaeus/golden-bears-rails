# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GoldenBear.destroy_all
Fish.destroy_all

20.times do |i|
  GoldenBear.create(name: "Bear #{i+1}")
end

40.times do |i|
  Fish.create(name: "Fish #{i+1}", bear: GoldenBear.all.sample)
end