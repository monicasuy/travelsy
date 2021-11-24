# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

# For Login

User.destroy_all
City.destroy_all
Itinerary.destroy_all
Stop.destroy_all
Review.destroy_all

User.create!(
  first_name: 'Haji',
  last_name: 'Mammadov',
  email: 'hmammado@gmail.com',
  password: 'password'
)

User.create!(
  first_name: 'Monica',
  last_name: 'Suy',
  email: 'monicasuy96@gmail.com',
  password: 'password'
)


User.create!(
  first_name: 'Diana',
  last_name: 'Barroso',
  email: 'dianabarrg@gmail.com',
  password: 'password'
)


  new_user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password'
  )


# Seeds for Cities

cities = ["Barcelona", "Istanbul", "New York", "Paris", "London", "Bangkok", "Dubai", "Beijing", "Tokyo", "Rome", "Delhi","Moscow" ]

stops = { "Sagrada Familia" => "monuments", "Park Guell" => "monuments", "Camp Nou" => "sports", "Gothic Square" => "neighborhoods", "Bunkers" => "views", "Monjuic" => "views", "Casa Mila" => "monuments", "La Rambla" => "neighborhoods", "Palau de la Música Catalana" => "museums", "Casa Batllo"=>"monuments" }

cities.each do |city_name|
   city = City.create!(
      name: city_name
    )

 # Seeds for Itinerary

  5.times do
    new_itinerary = Itinerary.create!(
        content: Faker::Quote.matz,
        days: Faker::Number.between(from: 1, to: 5),
        upvotes: Faker::Number.digit,
        city: city,
        user: new_user
      )

    Review.create!(
      content: Faker::Quote.matz,
      recommended_days: Faker::Number.between(from: 1, to: 5),
      itinerary: new_itinerary
    )

    puts 'hello world'

#  # Seeds for Stops

      stops.each do |stop, category|
        Stop.create!(
          title: stop,
          content: Faker::Quote.matz,
          price: Faker::Number.digit,
          address: Faker::Address.street_address,
          category: category,
          itinerary: new_itinerary
        )
      end
  end
end


 # Seeds for Reviews
