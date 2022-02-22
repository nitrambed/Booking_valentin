# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating seeds...'

  user2 = User.new(
    first_name: "User",
    last_name: "Test",
    email: "user@aaaaaazeaz.fr",
    password: "coucou"
  )
  user2.save!

  valentin = Valentin.new(
    name:    "Valentino",
    price: 20,
    user_id: 1,
    short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."

  )
  valentin.save!


  valentina = Valentin.new(
    name:    "Valentina",
    price: 30,
    user_id: 2,
    short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."

  )
  valentina.save!


  val = Valentin.new(
    name:    "Le Val de l'enfer",
    price: 300,
    user_id: 1,
    short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."

  )
  val.save!

  booking = Booking.new(
    user_id: 1,
    valentin_id: 3,
    reservation_at: "01/01/2021"
  )
  booking.save!


  booking1 = Booking.new(
    user_id: 2,
    valentin_id: 1,
    reservation_at: "01/01/2021"
  )
  booking1.save!


  booking2 = Booking.new(
    user_id: 1,
    valentin_id: 2,
    reservation_at: "01/01/2021"
  )
  booking2.save!

puts 'Finished!'
