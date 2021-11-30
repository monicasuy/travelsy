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
  },

  { name: "Barcelonetta",
  category: "partying",
  address: "Passeig Marítim de la Barceloneta, 08003 Barcelona" },

  { name: "Paella Making",
  category: "eating out",
  address: "Carrer del Torrent d'En Vidalet, 26, Barcelona"
  }
]

cities.each do |city_name|
   city = City.create!(
      name: city_name
    )

 # Seeds for Itinerary

  10.times do
    new_itinerary = Itinerary.create!(
        content: Faker::Quote.matz,
        days: Faker::Number.between(from: 3, to: 5),
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
        user: new_user
      )

    stop1 = Stop.create!(
        title: "Sant Pau Recinte Modernista Barcelona",
        price: 10,
        address: "Carrer de Sant Quintí, 89, 08041 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 1
      )
    end
    stop2 = Stop.create!(
        title: "Casa Vicens",
        price: 16,
        address: "Carrer de les Carolines, 20-26, 08012 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 1
      )
    end
    stop3 = Stop.create!(
        title: "el Born",
        price: 0,
        address: "El Born, 08003 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary1,
        day: 2
      )
    end
    stop4 = Stop.create!(
        title: "Las Ramblas",
        price: 0,
        address: "La Rambla, 08002 Barcelona Spain",
        category: "neighbourhoods",
        itinerary: itinerary1,
        day: 2
      )
    end
    stop5 = Stop.create!(
        title: "La Boqueria",
        price: 0,
        address: "Rambla, 91 08001 Barcelona",
        category: "market",
        itinerary: itinerary1,
        day: 2
      )
    end

    stop6 = Stop.create!(
        title: "Gothic Quarters",
        price: 16,
        address: "Carrer de la Ciutat, 1, 08002 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary1,
        day: 2
      )
    end

    stop7 = Stop.create!(
        title: "Plaça Reial",
        price: 0,
        address: "Pl. Reial 08002 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 2
      )
    end

    stop8 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 3
      )
    end

    stop9 = Stop.create!(
        title: "Casa Milà",
        price: 24,
        address: "P.º de Gracia, 92, 08008 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 3
      )
    end

    stop10 = Stop.create!(
        title: "Passeig de Gràcia",
        price: 0,
        address: "Pg. de Gràcia Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary1,
        day: 3
      )
    end

    stop10 = Stop.create!(
        title: "Casa Batlló",
        price: 45,
        address: "Pg. de Gràcia, 43, 08007 Barcelona",
        category: "iconic building",
        itinerary: itinerary1,
        day: 3
      )
    end
  end

  itinerary2 = Itinerary.create!(
        content: "The perfect itinerary for the lovers of food, art and history",
        days: 3,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user
      )

    stop11 = Stop.create!(
        title: "Tibidabo",
        price: 0,
        address: "Tibidabo, 08035 Barcelona, Spain",
        category: "views",
        itinerary: itinerary2,
        day: 1
      )
    end

    stop11 = Stop.create!(
        title: "A pluma",
        price: 17,
        address: "Carrer Gran de Gràcia, 7, 08012 Barcelona",
        category: "restaurants",
        itinerary: itinerary2,
        day: 1
      )
    end

    stop12 = Stop.create!(
        title: "Marcelino 1968",
        price: 16,
        address: "Plaça del Sol, 2, 08012 Barcelona",
        category: "drinking",
        itinerary: itinerary2,
        day: 1
      )
    end

    stop13 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary2,
        day: 2
      )
    end

    stop14 = Stop.create!(
        title: "Park Güell",
        price: 10,
        address: "Carrer d’Olot, 08024 Barcelona",
        category: "iconic building",
        itinerary: itinerary2,
        day: 2
      )
    end

    stop14 = Stop.create!(
        title: "Bunkers",
        price: 0,
        address: "Carrer de Marià Labèrnia, s/n, 08032 Barcelona",
        category: "views",
        itinerary: itinerary2,
        day: 2
      )
    end

    stop15 = Stop.create!(
        title: "La Boqueria",
        price: 0,
        address: "Rambla, 91 08001 Barcelona",
        category: "market",
        itinerary: itinerary2,
        day: 2
      )
    end

    stop16 = Stop.create!(
        title: "Sant Pau",
        price: 10,
        address: "Carrer de Sant Quintí, 89, 08041 Barcelona",
        category: "iconic building",
        itinerary: itinerary2,
        day: 3
      )
    end

    stop17 = Stop.create!(
        title: "Barceloneta",
        price: 0,
        address: "Paseo Marítimo Barceloneta, 14, 08003 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary2,
        day: 3
      )
    end

    stop18 = Stop.create!(
        title: "Arc de Triomf",
        price: 0,
        address: "Passeig de Lluís Companys, 08003 Barcelona",
        category: "monuments",
        itinerary: itinerary2,
        day: 3
      )
    end

    stop19 = Stop.create!(
        title: "Quillo",
        price: 18,
        address: "Carrer del Rec Comtal, 2, 08003 Barcelona",
        category: "restaurants",
        itinerary: itinerary2,
        day: 3
      )
    end
  end

  itinerary3 = Itinerary.create!(
        content: "Beach, food and art, what else could you want?",
        days: 3,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user
      )

      stop20 = Stop.create!(
        title: "Barceloneta",
        price: 0,
        address: "Paseo Marítimo Barceloneta, 14, 08003 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary3,
        day: 1
      )
    end

    stop21 = Stop.create!(
        title: "Arc de Triomf",
        price: 0,
        address: "Passeig de Lluís Companys, 08003 Barcelona",
        category: "monuments",
        itinerary: itinerary3,
        day: 1
      )
    end

    stop22 = Stop.create!(
        title: "Picasso Museum",
        price: 12,
        address: "Carrer de Montcada, 15-23, 08003 Barcelona",
        category: "museum",
        itinerary: itinerary3,
        day: 1
      )
    end

    stop23 = Stop.create!(
        title: "La Boqueria",
        price: 0,
        address: "Rambla, 91 08001 Barcelona",
        category: "market",
        itinerary: itinerary3,
        day: 1
      )
    end

    stop24 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary3,
        day: 2
      )
    end

    stop24 = Stop.create!(
        title: "Casa Milà",
        price: 24,
        address: "P.º de Gracia, 92, 08008 Barcelona",
        category: "iconic building",
        itinerary: itinerary3,
        day: 2
      )
    end

    stop25 = Stop.create!(
        title: "Passeig de Gràcia",
        price: 0,
        address: "Pg. de Gràcia Barcelona",
        Category: "neighbourhoods",
        itinerary: itinerary3,
        day: 2
      )
    end

    stop26 = Stop.create!(
        title: "Plaça Espanya",
        price: 0,
        address: "Gran Via de les Corts Catalanes, 08014 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary3,
        day: 3
      )
    end

    stop26 = Stop.create!(
        title: "Montjuïc",
        price: 0,
        address: "Montjuïc, 08038 Barcelona",
        category: "views",
        itinerary: itinerary3,
        day: 3
      )
    end

    stop27 = Stop.create!(
        title: "Joan Miró Foundation",
        price: 13,
        address: "Parc de Montjuïc, s/n, 08038 Barcelona",
        category: "museum",
        itinerary: itinerary3,
        day: 3
      )
    end
  end

  itinerary4 = Itinerary.create!(
        content: "The best itinerary for a group of diverse people: some sports, some food, some art and monuments and great views",
        days: 3,
        upvotes: Faker::Number.between(from: 50, to: 1000),
        city: "Barcelona",
        user: new_user
      )

    stop28 = Stop.create!(
        title: "Sagrada Família",
        price: 26,
        address: "Carrer de Mallorca, 401, 08013 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 1
      )
    end

    stop29 = Stop.create!(
        title: "Passeig de Gràcia",
        price: 0,
        address: "Pg. de Gràcia Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary4,
        day: 1
      )
    end
    stop30 = Stop.create!(
        title: "Casa Milà",
        price: 24,
        address: "P.º de Gracia, 92, 08008 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 1
      )
    end

    stop31 = Stop.create!(
        title: "Arc de Triomf",
        price: 0,
        address: "Passeig de Lluís Companys, 08003 Barcelona",
        category: "monuments",
        itinerary: itinerary4,
        day: 2
      )
    end
    stop32 = Stop.create!(
        title: "Las Ramblas",
        price: 0,
        address: "La Rambla, 08002 Barcelona Spain",
        category: "neighbourhoods",
        itinerary: itinerary4,
        day: 2
      )
    end

    stop33 = Stop.create!(
        title: "Gothic Quarters",
        price: 16,
        address: "Carrer de la Ciutat, 1, 08002 Barcelona",
        category: "neighbourhoods",
        itinerary: itinerary4,
        day: 2
      )
    end

    stop33 = Stop.create!(
        title: "Sant Pau",
        price: 10,
        address: "Carrer de Sant Quintí, 89, 08041 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 2
      )
    end

    stop33 = Stop.create!(
        title: "Bunkers",
        price: 0,
        address: "Carrer de Marià Labèrnia, s/n, 08032 Barcelona",
        category: "views",
        itinerary: itinerary4,
        day: 2
      )
    end

    stop33 = Stop.create!(
        title: "Park Güell",
        price: 10,
        address: "Carrer d’Olot, 08024 Barcelona",
        category: "iconic building",
        itinerary: itinerary4,
        day: 2
      )
    end
  end
end
