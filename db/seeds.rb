# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
Valentin.destroy_all
User.destroy_all

puts 'Creating seeds...'

user1 = User.create!(
  first_name: "User",
  last_name: "Test",
  email: "alex@gmail.com",
  password: "password"
)

user2 = User.create!(
  first_name: "User",
  last_name: "Test",
  email: "user@aaaaaazeaz.fr",
  password: "coucou"
)

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645544332/valentin2.jpg')
valentin = Valentin.new(
  name:    "Valentino",
  price: 20,
  user: user2,
  short_description: "Valentino est très dynamique sur le plan culturel et sportif, du à ses nombreuses rencontres tout au long de l’année.",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "11 Rue de la Gerbe, 69002 Lyon"
)
valentin.save!
valentin.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645708788/273047015_1008803049728066_239459524054551337_n_sqfocm.jpg')
valentina = Valentin.new(
  name:    "Valentina",
  price: 42,
  user: user2,
  short_description: "Valentina vous propose un service d’accueil et d’assistance à la hauteur de vos attentes ;)",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "10 avenue des champs-élysées, 75008 Paris"
)
valentina.save!
valentina.photo.attach(io: file, filename: 'valentin1.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645544332/valentin1.jpg')
val_la_menace = Valentin.new(
  name:    "Val la menace",
  price: 666,
  user: user2,
  short_description: "Valentina vous propose un service d’accueil et d’assistance à la hauteur de vos attentes ;)",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "111 Rue de Lorient, 35000 Rennes"
)
val_la_menace.save!
val_la_menace.photo.attach(io: file, filename: 'valentin1.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645708925/273483106_920684385297224_9048733898247143280_n_ujotba.jpg')
a_val = Valentin.new(
  name:    "A Val",
  price: 69,
  user: user2,
  short_description: "Valentina vous propose un service d’accueil et d’assistance à la hauteur de vos attentes ;)",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "105 Rue Sainte-Catherine, 33000 Bordeaux"
)
a_val.save!
a_val.photo.attach(io: file, filename: 'valentin1.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645709003/unnamedfffff_pplqfd.jpg')
val_pls = Valentin.new(
  name:    "Val en pls",
  price: 3,
  user: user2,
  short_description: "Valentina vous propose un service d’accueil et d’assistance à la hauteur de vos attentes ;)",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "4 Rue Winston Churchill, 57000 Metz"
)
val_pls.save!
val_pls.photo.attach(io: file, filename: 'valentin1.jpg', content_type: 'image/jpg')

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645708038/Image_d_iOS_bxxd9m.png')
val = Valentin.new(
  name:    "Le Val de l'enfer",
  price: 300,
  user: user2,
  adress: "20 rue Saint Nicolas, 59000 Lille",
  short_description: "Louer Le Val de l'enfer et immergez-vous dans votre ville. Il vous transportera au plus profon de votre cœur avec ses 2 000 ans d’histoire et vous éblouira par sa beauté",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
)
val.save!
val.photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
# val.marker_image.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')

booking = Booking.create!(
  user: user1,
  valentin: valentin,
  reservation_at: "01/01/2021"
)

booking1 = Booking.create!(
  user: user1,
  valentin: valentina,
  reservation_at: "01/01/2021"
)

booking2 = Booking.create!(
  user: user1,
  valentin: val,
  reservation_at: "01/01/2021"
)

booking3 = Booking.create!(
  user: user1,
  valentin: val_pls,
  reservation_at: "01/01/2021"
)

puts 'Finished!'
