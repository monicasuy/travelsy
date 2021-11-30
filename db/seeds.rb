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

# stops = [
#   { name: "Sagrada Familia",
#   category: "monuments",
#   address: "Carrer de Mallorca, 401, 08013 Barcelona"
#   },

#   { name: "Park Güell",
#   category: "monuments",
#   address: "Carrer d'Olot, 08024 Barcelona"
#   },

#   { name: "Camp Nou",
#   category: "sports",
#   address: "C. d'Arístides Maillol, 12, 08028 Barcelona"
#   },

#   { name: "Gothic Quarters",
#   category: "neighborhoods",
#   address: "Carrer de la Ciutat, 1, 08002 Barcelona"
#   },

#   { name: "Bunkers",
#   category: "views",
#   address: "Carrer de Marià Labèrnia, s/n, 08032 Barcelona"
#   },

#   { name: "Montjuïc",
#   category: "views",
#   address: "Ctra. de Montjuïc, 66, 08038 Barcelona"
#   },

#   { name: "Casa Milà",
#   category: "monuments",
#   address: "P.º de Gracia, 92, 08008 Barcelona"
#   },

#    { name: "La Rambla",
#   category: "neighborhoods",
#   address: "La Rambla, 08002 Barcelona"
#   },

#   { name: "Palau de la Música Catalana",
#   category: "museums",
#   address: "C/ Palau de la Música, 4-6, 08003 Barcelona"
#   },

#   { name: "Casa Batlló",
#   category: "monuments",
#   address: "P.º de Gracia, 43, 08007 Barcelona"
#   },

#   { name: "Barcelonetta",
#   category: "partying",
#   address: "Passeig Marítim de la Barceloneta, 08003 Barcelona" },

#   { name: "Paella Making",
#   category: "eating out",
#   address: "Carrer del Torrent d'En Vidalet, 26, Barcelona"
#   }
# ]

# cities.each do |city_name|
#    city = City.create!(
#       name: city_name
#     )

#  # Seeds for Itinerary

#   10.times do
#     new_itinerary = Itinerary.create!(
#         content: Faker::Quote.matz,
#         days: Faker::Number.between(from: 3, to: 5),
#         upvotes: Faker::Number.between(from: 50, to: 1000),
#         city: city,
#         user: new_user
#       )

#     Review.create!(
#       content: Faker::Quote.matz,
#       recommended_days: Faker::Number.between(from: 1, to: 5),
#       itinerary: new_itinerary
#     )
    # addresses = ["Carrer de Mallorca, 401, 08013 Barcelona", "Carrer d'Olot, 08024 Barcelona",
    #              "C. d'Arístides Maillol, 12, 08028 Barcelona", "Carrer de la Ciutat, 1, 08002 Barcelona",
    #              "Carrer de Marià Labèrnia, s/n, 08032 Barcelona", "Ctra. de Montjuïc, 66, 08038 Barcelona",
    #              "P.º de Gracia, 92, 08008 Barcelona", "La Rambla, 08002 Barcelona", "C/ Palau de la Música, 4-6, 08003 Barcelona",
    #              "P.º de Gracia, 43, 08007 Barcelona"]


#  # Seeds for Stops

#         Stop.create!(
#           title: stop[:name],
#           content: Faker::Quote.matz,
#           price: Faker::Number.digit,
#           address: stop[:address],
#           category: stop[:category],
#           itinerary: new_itinerary,
#           day: [1, 2, 3, 4, 5].sample
#         )
#       end
#   end
# end


 # Seeds for Reviews
 cities.each do |city_name|
    city = City.create!(
       name: city_name
    )
 end

new_user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password'
  )

  itinerary1 = Itinerary.create!(
        content: "A beautiful itinerary for those who love Gaudí and amazing food!",
        days: 3,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
      )

    stop1 = Stop.create!(
        title: "Sant Pau Recinte Modernista Barcelona",
        price: 10,
        address: "Carrer de Sant Quintí, 89, 08041 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 1
      )
    stop2 = Stop.create!(
        title: "Casa Vicens",
        price: 16,
        address: "Carrer de les Carolines, 20-26, 08012 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 1
      )

    stop3 = Stop.create!(
        title: "el Born",
        price: 0,
        address: "El Born, 08003 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary1,
        day: 2
      )

    stop4 = Stop.create!(
        title: "Las Ramblas",
        price: 0,
        address: "La Rambla, 08002 Barcelona Spain",
        category: "neighbourhoods",
        itinerary: itinerary1,
        day: 2
      )

    stop5 = Stop.create!(
        title: "La Boqueria",
        price: 0,
        address: "Rambla, 91 08001 Barcelona",
        category: "market",
        itinerary: itinerary1,
        day: 2
      )


    stop6 = Stop.create!(
        title: "Gothic Quarters",
        price: 16,
        address: "Carrer de la Ciutat, 1, 08002 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary1,
        day: 2
      )


    stop7 = Stop.create!(
        title: "Plaça Reial",
        price: 0,
        address: "Pl. Reial 08002 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 2
      )


    stop8 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 3
      )


    stop9 = Stop.create!(
        title: "Casa Milà",
        price: 24,
        address: "P.º de Gracia, 92, 08008 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 3
      )


    stop10 = Stop.create!(
        title: "Passeig de Gràcia",
        price: 0,
        address: "Pg. de Gràcia Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary1,
        day: 3
      )


    stop10 = Stop.create!(
        title: "Casa Batlló",
        price: 45,
        address: "Pg. de Gràcia, 43, 08007 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 3
      )



  itinerary2 = Itinerary.create!(
        content: "The perfect itinerary for the lovers of food, art and history",
        days: 3,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
      )

    stop11 = Stop.create!(
        title: "Tibidabo",
        price: 0,
        address: "Tibidabo, 08035 Barcelona, Spain",
        category: "views",
        itinerary: itinerary2,
        day: 1
      )


    stop11 = Stop.create!(
        title: "A pluma",
        price: 17,
        address: "Carrer Gran de Gràcia, 7, 08012 Barcelona",
        category: "restaurants",
        itinerary: itinerary2,
        day: 1
      )


    stop12 = Stop.create!(
        title: "Marcelino 1968",
        price: 16,
        address: "Plaça del Sol, 2, 08012 Barcelona",
        category: "drinking",
        itinerary: itinerary2,
        day: 1
      )


    stop13 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary2,
        day: 2

      )


    stop14 = Stop.create!(
        title: "Park Güell",
        price: 10,
        address: "Carrer d’Olot, 08024 Barcelona",
        category: "iconic building",
        itinerary: itinerary2,
        day: 2
      )


    stop14 = Stop.create!(
        title: "Bunkers",
        price: 0,
        address: "Carrer de Marià Labèrnia, s/n, 08032 Barcelona",
        category: "views",
        itinerary: itinerary2,
        day: 2
      )


    stop15 = Stop.create!(
        title: "La Boqueria",
        price: 0,
        address: "Rambla, 91 08001 Barcelona",
        category: "market",
        itinerary: itinerary2,
        day: 2
      )


    stop16 = Stop.create!(
        title: "Sant Pau",
        price: 10,
        address: "Carrer de Sant Quintí, 89, 08041 Barcelona",
        category: "iconic building",
        itinerary: itinerary2,
        day: 3
      )


    stop17 = Stop.create!(
        title: "Barceloneta",
        price: 0,
        address: "Paseo Marítimo Barceloneta, 14, 08003 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary2,
        day: 3
      )


    stop18 = Stop.create!(
        title: "Arc de Triomf",
        price: 0,
        address: "Passeig de Lluís Companys, 08003 Barcelona",
        category: "monuments",
        itinerary: itinerary2,
        day: 3
      )


    stop19 = Stop.create!(
        title: "Quillo",
        price: 18,
        address: "Carrer del Rec Comtal, 2, 08003 Barcelona",
        category: "restaurants",
        itinerary: itinerary2,
        day: 3
      )



  itinerary3 = Itinerary.create!(
        content: "Beach, food and art, what else could you want?",
        days: 3,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
      )

      stop20 = Stop.create!(
        title: "Barceloneta",
        price: 0,
        address: "Paseo Marítimo Barceloneta, 14, 08003 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary3,
        day: 1
      )


    stop21 = Stop.create!(
        title: "Arc de Triomf",
        price: 0,
        address: "Passeig de Lluís Companys, 08003 Barcelona",
        category: "monuments",
        itinerary: itinerary3,
        day: 1
      )


    stop22 = Stop.create!(
        title: "Picasso Museum",
        price: 12,
        address: "Carrer de Montcada, 15-23, 08003 Barcelona",
        category: "museum",
        itinerary: itinerary3,
        day: 1
      )


    stop23 = Stop.create!(
        title: "La Boqueria",
        price: 0,
        address: "Rambla, 91 08001 Barcelona",
        category: "market",
        itinerary: itinerary3,
        day: 1
      )


    stop24 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary3,
        day: 2
      )


    stop24 = Stop.create!(
        title: "Casa Milà",
        price: 24,
        address: "P.º de Gracia, 92, 08008 Barcelona",
        category: "iconic building",
        itinerary: itinerary3,
        day: 2
      )


    stop25 = Stop.create!(
        title: "Passeig de Gràcia",
        price: 0,
        address: "Pg. de Gràcia Barcelona",
        Category: "neighbourhoods",
        itinerary: itinerary3,
        day: 2
      )


    stop26 = Stop.create!(
        title: "Plaça Espanya",
        price: 0,
        address: "Gran Via de les Corts Catalanes, 08014 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary3,
        day: 3
      )


    stop26 = Stop.create!(
        title: "Montjuïc",
        price: 0,
        address: "Montjuïc, 08038 Barcelona",
        category: "views",
        itinerary: itinerary3,
        day: 3
      )


    stop27 = Stop.create!(
        title: "Joan Miró Foundation",
        price: 13,
        address: "Parc de Montjuïc, s/n, 08038 Barcelona",
        category: "museum",
        itinerary: itinerary3,
        day: 3
      )



  itinerary4 = Itinerary.create!(
        content: "The best itinerary for a group of diverse people: some sports, some food, some art and monuments and great views",
        days: 3,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
      )

    stop28 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 1
      )


    stop29 = Stop.create!(
        title: "Passeig de Gràcia",
        price: 0,
        address: "Pg. de Gràcia Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary4,
        day: 1
      )

    stop30 = Stop.create!(
        title: "Casa Milà",
        price: 24,
        address: "P.º de Gracia, 92, 08008 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 1
      )


    stop31 = Stop.create!(
        title: "Arc de Triomf",
        price: 0,
        address: "Passeig de Lluís Companys, 08003 Barcelona",
        category: "monuments",
        itinerary: itinerary4,
        day: 2
      )

    stop32 = Stop.create!(
        title: "Las Ramblas",
        price: 0,
        address: "La Rambla, 08002 Barcelona Spain",
        category: "neighbourhoods",
        itinerary: itinerary4,
        day: 2
      )


    stop33 = Stop.create!(
        title: "Gothic Quarters",
        price: 16,
        address: "Carrer de la Ciutat, 1, 08002 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary4,
        day: 2
      )


    stop34 = Stop.create!(
        title: "Sant Pau",
        price: 10,
        address: "Carrer de Sant Quintí, 89, 08041 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 3
      )


    stop35 = Stop.create!(
        title: "Bunkers",
        price: 0,
        address: "Carrer de Marià Labèrnia, s/n, 08032 Barcelona",
        category: "views",
        itinerary: itinerary4,
        day: 3
      )


    stop36 = Stop.create!(
        title: "Park Güell",
        price: 10,
        address: "Carrer d’Olot, 08024 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 3
      )


  itinerary5 = Itinerary.create!(
        content: "A great itinerary for discovering Barcelona",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
    )

  itinerary6 = Itinerary.create!(
        content: "Perfect itinerary for people visiting Barcelona for the first time",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
    )

  itinerary7 = Itinerary.create!(
        content: "Hope you enjoy this itinerary based on my last holiday in Barcelona!",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
    )


  itinerary8 = Itinerary.create!(
        content: "If you want to see the best itinerary for Barcelona, you're in the right page!",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
    )

  itinerary9 = Itinerary.create!(
        content: "A great itinerary for foodies!",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
    )

  itinerary10 = Itinerary.create!(
        content: "A great itinerary for art lovers!",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
    )

  itinerary11 = Itinerary.create!(
        content: "Have a great time visiting some of my favourite spots in the city",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
    )

  itinerary12 = Itinerary.create!(
        content: "All the places I love from this city, I hope you enjoy :)",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user,
        keyword: Itinerary::ACTIVITIES.sample
    )

itinerary1.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290864/sant-pau_hvq7rk.jpg'), filename: 'sant-pau_hvq7rk')
itinerary2.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290653/tibidabo_bmfwfz.jpg'), filename: 'tibidabo_bmfwfz')
itinerary3.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290925/barceloneta_i6gdl5.jpg'), filename: 'barceloneta_i6gdl5')
itinerary4.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638289759/sagrada-familia_xew1kl.jpg'), filename: 'sagrada-familia_xew1kl')
itinerary5.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638291003/camp-nou_ryvnn0.jpg'), filename: 'camp-nou_ryvnn0')
itinerary6.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638291303/casa-vicens_lwgagi.jpg'), filename: 'casa-vicens_lwgagi')
itinerary7.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638291949/bunkers_u9adqg.jpg'), filename: 'bunkers_u9adqg')
itinerary8.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292012/barri-gotic_ijy3lf.jpg'), filename: 'barri-gotic_ijy3lf')
itinerary9.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292068/rambla_ugx9gi.jpg'), filename: 'rambla_ugx9gi')
itinerary10.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292123/arc-de-triomf_q4kmcr.jpg'), filename: 'arc-de-triomf_q4kmcr')
itinerary11.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290234/park-guell_a0urh3.jpg'), filename: 'park-guell_a0urh3')
itinerary12.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292221/casa-mila_ahscab.jpg'), filename: 'casa-mila_ahscab')
