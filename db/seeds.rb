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

stops = [
  { name: "Sagrada Familia",
  category: "monuments",
  address: "Carrer de Mallorca, 401, 08013 Barcelona"
  },

  { name: "Park Güell",
  category: "monuments",
  address: "Carrer d'Olot, 08024 Barcelona"
  },

  { name: "Camp Nou",
  category: "sports",
  address: "C. d'Arístides Maillol, 12, 08028 Barcelona"
  },

  { name: "Gothic Quarters",
  category: "neighborhoods",
  address: "Carrer de la Ciutat, 1, 08002 Barcelona"
  },

  { name: "Bunkers",
  category: "views",
  address: "Carrer de Marià Labèrnia, s/n, 08032 Barcelona"
  },

  { name: "Montjuïc",
  category: "views",
  address: "Ctra. de Montjuïc, 66, 08038 Barcelona"
  },

  { name: "Casa Milà",
  category: "monuments",
  address: "P.º de Gracia, 92, 08008 Barcelona"
  },

   { name: "La Rambla",
  category: "neighborhoods",
  address: "La Rambla, 08002 Barcelona"
  },

  { name: "Palau de la Música Catalana",
  category: "museums",
  address: "C/ Palau de la Música, 4-6, 08003 Barcelona"
  },

  { name: "Casa Batlló",
  category: "monuments",
  address: "P.º de Gracia, 43, 08007 Barcelona"
  } ]

cities.each do |city_name|
   city = City.create!(
      name: city_name
    )

 # Seeds for Itinerary

  5.times do
    new_itinerary = Itinerary.create!(
        content: Faker::Quote.matz,
        days: Faker::Number.between(from: 2, to: 5),
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: city,
        user: new_user
      )

    Review.create!(
      content: Faker::Quote.matz,
      recommended_days: Faker::Number.between(from: 1, to: 5),
      itinerary: new_itinerary
    )
    # addresses = ["Carrer de Mallorca, 401, 08013 Barcelona", "Carrer d'Olot, 08024 Barcelona",
    #              "C. d'Arístides Maillol, 12, 08028 Barcelona", "Carrer de la Ciutat, 1, 08002 Barcelona",
    #              "Carrer de Marià Labèrnia, s/n, 08032 Barcelona", "Ctra. de Montjuïc, 66, 08038 Barcelona",
    #              "P.º de Gracia, 92, 08008 Barcelona", "La Rambla, 08002 Barcelona", "C/ Palau de la Música, 4-6, 08003 Barcelona",
    #              "P.º de Gracia, 43, 08007 Barcelona"]


#  # Seeds for Stops

      stops.each do |stop|
        Stop.create!(
          title: stop[:name],
          content: Faker::Quote.matz,
          price: Faker::Number.digit,
          address: stop[:address],
          category: stop[:category],
          itinerary: new_itinerary,
          day: [1, 2, 3, 4, 5].sample
        )
      end
  end
end


 # Seeds for Reviews
