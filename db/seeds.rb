# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 5 fake flats...'

flats_attributes = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: rand(60..500),
    number_of_guests: rand(1..5)
  },
  {
    name: 'Miami Mansion',
    address: Faker::Address.street_address,
    description: Faker::TvShows::Friends.quote,
    price_per_night: rand(60..500),
    number_of_guests: rand(1..5)
  },
  {
    name: 'Light & Spacious Garden Flat London',
    address: Faker::Address.street_address,
    description: Faker::TvShows::Friends.quote,
    price_per_night: rand(60..500),
    number_of_guests: rand(1..5)
  },
  {
    name: 'Light & Spacious Garden Flat London',
    address: Faker::Address.street_address,
    description: Faker::TvShows::Friends.quote,
    price_per_night: rand(60..500),
    number_of_guests: rand(1..5)
  }
]

Flat.create!(flats_attributes)

puts 'finished!'
