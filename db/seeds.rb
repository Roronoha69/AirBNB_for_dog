require 'faker'


Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

20.times do
  city = City.create!(
  city_name: Faker::JapaneseMedia::Naruto.village)
end

20.times do
  dog = Dog.create!(
     name: Faker::Games::WorldOfWarcraft.hero,
     race: Faker::Creature::Dog.breed,
     attitude: Faker::Emotion.noun,
     city_id: City.all.sample.id)
 end

20.times do
  dogsitter = Dogsitter.create!(
    name: Faker::JapaneseMedia::OnePiece.character,
    age: Faker::Number.between(from: 16, to: 80),
    client_rating: Faker::Number.between(from: 1, to: 10),
    city_id: City.all.sample.id)
end

20.times do
  stroll = Stroll.create!(
    date: Faker::Time.between_dates(from: Date.today - 5, to: Date.today + 5, period: :afternoon, format: :default),
    dog_id: Dog.all.sample.id,
    dogsitter_id: Dogsitter.all.sample.id,
    city_id: City.all.sample.id)
end

puts "Bien joué, tu as tout créer !"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

