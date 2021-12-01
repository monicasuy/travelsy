# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
require 'open-uri'

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

# cities = ["Barcelona", "Istanbul", "New York", "Paris", "London", "Bangkok", "Dubai", "Beijing", "Tokyo", "Rome", "Delhi","Moscow" ]

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

  barcelona = City.create!(
    name: "Barcelona"
  )

  istanbul = City.create!(
    name: "Istanbul"
  )

  tokyo = City.create!(
    name: "Tokyo"
  )

  new_york = City.create!(
    name: "New York"
  )

  paris = City.create!(
    name: "Paris"
  )

  london = City.create!(
    name: "London"
  )

  bangkok = City.create!(
    name: "Bangkok"
  )
  dubai = City.create!(
    name: "Dubai"
  )
  beijing = City.create!(
    name: "Beijing"
  )
  rome = City.create!(
    name: "Rome"
  )
  delhi = City.create!(
    name: "Delhi"
  )
  moscow = City.create!(
    name: "Moscow"
  )

new_user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password'
  )

  itinerary1 = Itinerary.create!(
        content: "A beautiful itinerary for those who love Gaudí and amazing food!",
        days: 3,
        upvotes: 1321,
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
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
        day: 1
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


    stop11 = Stop.create!(
        title: "Casa Batlló",
        price: 45,
        address: "Pg. de Gràcia, 43, 08007 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 3
      )



  itinerary2 = Itinerary.create!(
        content: "The perfect itinerary for the lovers of food, art and history",
        days: 4,
        upvotes: 1236,
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
      )

    stop12 = Stop.create!(
        title: "Tibidabo",
        price: 0,
        address: "Tibidabo, 08035 Barcelona, Spain",
        category: "views",
        itinerary: itinerary2,
        day: 1
      )


    stop13 = Stop.create!(
        title: "A pluma",
        price: 17,
        address: "Carrer Gran de Gràcia, 7, 08012 Barcelona",
        category: "restaurants",
        itinerary: itinerary2,
        day: 1
      )


    stop14 = Stop.create!(
        title: "Marcelino 1968",
        price: 16,
        address: "Plaça del Sol, 2, 08012 Barcelona",
        category: "drinking",
        itinerary: itinerary2,
        day: 1
      )


    stop15 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary2,
        day: 2

      )


    stop16 = Stop.create!(
        title: "Park Güell",
        price: 10,
        address: "Carrer d’Olot, 08024 Barcelona",
        category: "iconic building",
        itinerary: itinerary2,
        day: 2
      )


    stop17 = Stop.create!(
        title: "Bunkers",
        price: 0,
        address: "Carrer de Marià Labèrnia, s/n, 08032 Barcelona",
        category: "views",
        itinerary: itinerary2,
        day: 2
      )


    stop18 = Stop.create!(
        title: "La Boqueria",
        price: 0,
        address: "Rambla, 91 08001 Barcelona",
        category: "market",
        itinerary: itinerary2,
        day: 2
      )


      stop19 = Stop.create!(
        title: "Barceloneta",
        price: 0,
        address: "Paseo Marítimo Barceloneta, 14, 08003 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary2,
        day: 3
      )

      stop20 = Stop.create!(
        title: "Arc de Triomf",
        price: 0,
        address: "Passeig de Lluís Companys, 08003 Barcelona",
        category: "monuments",
        itinerary: itinerary2,
        day: 3
      )


      stop21 = Stop.create!(
        title: "Quillo",
        price: 18,
        address: "Carrer del Rec Comtal, 2, 08003 Barcelona",
        category: "restaurants",
        itinerary: itinerary2,
        day: 3
      )

      stop22 = Stop.create!(
          title: "Sant Pau",
          price: 10,
          address: "Carrer de Sant Quintí, 89, 08041 Barcelona",
          category: "iconic building",
          itinerary: itinerary2,
          day: 4
        )

      stop42 = Stop.create!(
        title: "Encercle",
        price: 22,
        address: "Carrer de Corsega, 372, 08037 Barcelona",
        category: "restaurant",
        itinerary: itinerary2,
        day: 4
      )

      stop43 = Stop.create!(
        title: "Museum of National Art of Catalonia",
        price: 12,
        address: "Palau Nacional, Parc de Montjuïc, s/n, 08038 Barcelona",
        category: "museum",
        itinerary: itinerary2,
        day: 4
      )


  itinerary3 = Itinerary.create!(
        content: "Beach, food and art, what else could you want?",
        days: 5,
        upvotes: 1167,
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
      )

      stop23 = Stop.create!(
        title: "Barceloneta",
        price: 0,
        address: "Paseo Marítimo Barceloneta, 14, 08003 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary3,
        day: 1
      )


    stop24 = Stop.create!(
        title: "Arc de Triomf",
        price: 0,
        address: "Passeig de Lluís Companys, 08003 Barcelona",
        category: "monuments",
        itinerary: itinerary3,
        day: 1
      )


    stop25 = Stop.create!(
        title: "Picasso Museum",
        price: 12,
        address: "Carrer de Montcada, 15-23, 08003 Barcelona",
        category: "museum",
        itinerary: itinerary3,
        day: 1
      )


    stop26 = Stop.create!(
        title: "La Boqueria",
        price: 0,
        address: "Rambla, 91 08001 Barcelona",
        category: "market",
        itinerary: itinerary3,
        day: 1
      )


    stop27 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary3,
        day: 2
      )


    stop28 = Stop.create!(
        title: "Casa Milà",
        price: 24,
        address: "P.º de Gracia, 92, 08008 Barcelona",
        category: "iconic building",
        itinerary: itinerary3,
        day: 2
      )


    stop29 = Stop.create!(
        title: "Passeig de Gràcia",
        price: 0,
        address: "Pg. de Gràcia Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary3,
        day: 2
      )


    stop30 = Stop.create!(
        title: "Plaça Espanya",
        price: 0,
        address: "Gran Via de les Corts Catalanes, 08014 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary3,
        day: 3
      )


    stop31 = Stop.create!(
        title: "Montjuïc",
        price: 0,
        address: "Passeig del Migdia, 147, 08038 Barcelona",
        category: "views",
        itinerary: itinerary3,
        day: 3
      )


    stop32 = Stop.create!(
        title: "Joan Miró Foundation",
        price: 13,
        address: "Parc de Montjuïc, s/n, 08038 Barcelona",
        category: "museum",
        itinerary: itinerary3,
        day: 3
      )

    stop44 = Stop.create!(
      title: "Camp Nou",
      price: 26,
      address: "C. d'Arístides Maillol, 12, 08028 Barcelona",
      category: "sports",
      itinerary: itinerary3,
      day: 4
    )

    stop45 = Stop.create!(
      title: "Joanet",
      price: 20,
      address: "Plaça de Sant Agustí Vell, 6, 08003 Barcelona",
      category: "restaurant",
      itinerary: itinerary3,
      day: 4
    )

    stop46 = Stop.create!(
      title: "Moco museum",
      price: 12,
      address: "Carrer de Montcada, 25, 08003 Barcelona",
      category: "museum",
      itinerary: itinerary3,
      day: 4
    )

    stop47 = Stop.create!(
      title: "Barceloneta",
      price: 0,
      address: "Paseo Marítimo Barceloneta, 14, 08003 Barcelona",
      category: "neighbourhoods",
      itinerary: itinerary3,
      day: 5
    )

    stop48 = Stop.create!(
      title: "Arc de Triomf",
      price: 0,
      address: "Passeig de Lluís Companys, 08003 Barcelona",
      category: "monuments",
      itinerary: itinerary3,
      day: 5
    )

    stop49 = Stop.create!(
      title: "Paradiso",
      price: 20,
      address: "Carrer de Rera Palau, 4, 08003 Barcelona",
      category: "drinking",
      itinerary: itinerary3,
      day: 5
    )


  itinerary4 = Itinerary.create!(
        content: "The best itinerary for a group of diverse people: some sports, some food, some art and monuments and great views",
        days: 3,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
      )

    stop33 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 1
      )


    stop34 = Stop.create!(
        title: "Passeig de Gràcia",
        price: 0,
        address: "Pg. de Gràcia Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary4,
        day: 1
      )

    stop35 = Stop.create!(
        title: "Casa Milà",
        price: 24,
        address: "P.º de Gracia, 92, 08008 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 1
      )


    stop36 = Stop.create!(
        title: "Arc de Triomf",
        price: 0,
        address: "Passeig de Lluís Companys, 08003 Barcelona",
        category: "monuments",
        itinerary: itinerary4,
        day: 2
      )

    stop37 = Stop.create!(
        title: "Las Ramblas",
        price: 0,
        address: "La Rambla, 08002 Barcelona Spain",
        category: "neighbourhoods",
        itinerary: itinerary4,
        day: 2
      )


    stop38 = Stop.create!(
        title: "Gothic Quarters",
        price: 16,
        address: "Carrer de la Ciutat, 1, 08002 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary4,
        day: 2
      )


    stop39 = Stop.create!(
        title: "Sant Pau",
        price: 10,
        address: "Carrer de Sant Quintí, 89, 08041 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 3
      )


    stop40 = Stop.create!(
        title: "Bunkers",
        price: 0,
        address: "Carrer de Marià Labèrnia, s/n, 08032 Barcelona",
        category: "views",
        itinerary: itinerary4,
        day: 3
      )


    stop41 = Stop.create!(
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
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
    )

  itinerary6 = Itinerary.create!(
        content: "Perfect itinerary for people visiting Barcelona for the first time",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
    )

  itinerary7 = Itinerary.create!(
        content: "Hope you enjoy this itinerary based on my last holiday in Barcelona!",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
    )


  itinerary8 = Itinerary.create!(
        content: "If you want to see the best itinerary for Barcelona, you're in the right page!",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
    )

  itinerary9 = Itinerary.create!(
        content: "A great itinerary for foodies!",
        days: 4,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
    )

  itinerary10 = Itinerary.create!(
        content: "A great itinerary for art lovers!",
        days: 5,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
    )

  itinerary11 = Itinerary.create!(
        content: "Have a great time visiting some of my favourite spots in the city",
        days: 5,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
    )

  itinerary12 = Itinerary.create!(
        content: "All the places I love from this city, I hope you enjoy :)",
        days: 5,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: barcelona,
        user: new_user,
        keywords: Itinerary::ACTIVITIES.sample
    )


# Attaching photos to itinerary cards
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

# Attaching photos to city cards
barcelona.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638289759/sagrada-familia_xew1kl.jpg'), filename:'barcelona')
istanbul.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294025/Istanbul_yoes38.jpg'), filename: 'istanbul')
tokyo.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294027/Tokyo_dmaf7z.jpg'), filename: 'tokyo')
new_york.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294029/New_York_aapqd7.jpg'), filename: 'new york')
paris.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294027/Paris_xmypb9.jpg'), filename: 'paris')
london.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294026/London_wencm0.jpg'), filename: 'london')
bangkok.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294025/Bangkok_s9bszg.jpg'), filename:'bangkok')
dubai.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294025/Dubai_husduu.jpg'), filename: 'dubai')
beijing.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294025/Beijing_da0s9w.jpg'), filename: 'beijing')
rome.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294027/Rome_vqyzv3.jpg'), filename: 'rome')
delhi.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294025/Delhi_mrsvfn.jpg'), filename: 'dubai')
moscow.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638294025/Moscow_oveday.jpg'), filename: 'moscow')

# Attaching photos to stops
stop1.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290864/sant-pau_hvq7rk.jpg'), filename: 'sant-pau')
stop2.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638291303/casa-vicens_lwgagi.jpg'), filename: 'casa-vicens')
stop3.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638295141/photo-1602797171402-9774bd8f8eb6_occmjy.jpg'), filename: 'el-born')
stop4.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292068/rambla_ugx9gi.jpg'), filename: 'la-rambla')
stop5.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638295292/la_boqueria_uheyol.jpg'), filename: 'la-boqueria')
stop6.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292012/barri-gotic_ijy3lf.jpg'), filename: 'barri-gotic')
stop7.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638295434/city-g495f8009f_1920_rjekco.jpg'), filename: 'plaça-reial')
stop8.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638289759/sagrada-familia_xew1kl.jpg'), filename: 'sagrada-familia')
stop9.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292221/casa-mila_ahscab.jpg'), filename: 'casa-mila')
stop10.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638295568/photo-1571557750012-ea435944d011_cmequu.jpg'), filename: 'passeig-de-gracia')
stop11.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638295613/amal-bourkhis-PCcdG8pnGyw-unsplash_a9zejq.jpg'), filename: 'casa-batllo')
stop12.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290653/tibidabo_bmfwfz.jpg'), filename: 'tibidabo')
# stop13.photo.attach(io: URI.open(), filename:)
# stop14.photo.attach(io: URI.open(), filename:)
stop15.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638289759/sagrada-familia_xew1kl.jpg'), filename: 'sagrada-familia')
stop16.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290234/park-guell_a0urh3.jpg'), filename: 'park-guell')
stop17.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638291949/bunkers_u9adqg.jpg'), filename: 'bunkers')
stop18.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638295292/la_boqueria_uheyol.jpg'), filename: 'la-boqueria')
stop19.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290925/barceloneta_i6gdl5.jpg'), filename: 'barceloneta')
stop20.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292123/arc-de-triomf_q4kmcr.jpg'), filename: 'arc-de-triomf')
# stop21.photo.attach(io: URI.open(), filename:)
stop22.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290864/sant-pau_hvq7rk.jpg'), filename: 'sant-pau')
stop23.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290925/barceloneta_i6gdl5.jpg'), filename: 'barceloneta')
stop24.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292123/arc-de-triomf_q4kmcr.jpg'), filename: 'arc-de-triomf')
# stop25.photo.attach(io: URI.open(), filename:)
stop26.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638295292/la_boqueria_uheyol.jpg'), filename: 'la-boqueria')
stop27.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638289759/sagrada-familia_xew1kl.jpg'), filename: 'sagrada-familia')
stop28.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292221/casa-mila_ahscab.jpg'), filename: 'casa-mila')
stop29.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638295568/photo-1571557750012-ea435944d011_cmequu.jpg'), filename: 'passeig-de-gracia')
stop30.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638296299/pexels-palu-malerba-8738142_lrtw2j.jpg'), filename: 'plaça-espanya')
stop31.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638296279/vitaliy-zamedyanskiy-FGJTlEM4gTU-unsplash_yygxb4.jpg'), filename: 'montjuic')
# stop32.photo.attach(io: URI.open(), filename:)
stop33.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638289759/sagrada-familia_xew1kl.jpg'), filename: 'sagrada-familia')
stop34.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638295568/photo-1571557750012-ea435944d011_cmequu.jpg'), filename: 'passeig-de-gracia')
stop35.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292221/casa-mila_ahscab.jpg'), filename: 'casa-mila')
stop36.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292123/arc-de-triomf_q4kmcr.jpg'), filename: 'arc-de-triomf')
stop37.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292068/rambla_ugx9gi.jpg'), filename: 'ramblas')
stop38.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292012/barri-gotic_ijy3lf.jpg'), filename: 'barri-gotic')
stop39.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290864/sant-pau_hvq7rk.jpg'), filename: 'sant-pau')
stop40.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638291949/bunkers_u9adqg.jpg'), filename: 'bunkers')
stop41.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290234/park-guell_a0urh3.jpg'), filename: 'park-guell')
# stop42.photo.attach(io: URI.open(), filename:)
stop43.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638355148/isi-parente-NLbW82E6w54-unsplash_yqetbr.jpg'), filename: 'mnac')
stop44.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638291003/camp-nou_ryvnn0.jpg'), filename: 'camp-nou')
# stop45.photo.attach(io: URI.open(), filename:)
# stop46.photo.attach(io: URI.open(), filename:)
stop47.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638290925/barceloneta_i6gdl5.jpg'), filename: 'barceloneta')
stop48.photo.attach(io: URI.open('https://res.cloudinary.com/de4v6txjq/image/upload/v1638292123/arc-de-triomf_q4kmcr.jpg'), filename: 'arc-de-triomf')
# stop49.photo.attach(io: URI.open(), filename:)
