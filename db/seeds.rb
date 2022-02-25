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

puts "Creating Val"

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645784598/val_dating_yh2pbg.jpg')
don_val = Valentin.new(
  name:    "Don Val",
  price: 190,
  user: user2,
  short_description: "C´est un garçon mignon et amoureux. Il a les yeux marron et les cheveux châtains.",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "90 Quai des Belges, 13017 Marseille"
)
don_val.save!
don_val.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645784642/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_11.23.57_sj19dw.png')
don_val.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')

print "."
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645718580/val_lasergame.jpg')
valentin_la_bagarre = Valentin.new(
  name:    "Valentin la bagarre",
  price: 13,
  user: user2,
  short_description: "Val la bagarre, une veritable terreur ....",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "14 rue Pierre De Coubertin, 31100 Toulouse"
)
valentin_la_bagarre.save!
valentin_la_bagarre.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645784885/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_11.27.56_amw4y2.png')
valentin_la_bagarre.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645785228/valentin_chelsea_gxkqjn.jpg')
valentin_blues = Valentin.new(
  name:    "Valentin fan de Chelsea",
  price: 20,
  user: user2,
  short_description: "Valentin fan d'un club sans âme, sans palmares et sans histoire.",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "29 Rue Saint-Simon, 69009 Lyon"
)
valentin_blues.save!
valentin_blues.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645785221/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_11.33.34_hjjzlq.png')
valentin_blues.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645785587/val_lij0pb.png')
val_solo = Valentin.new(
  name:    "Val Solo",
  price: 39,
  user: user2,
  short_description: "Un équipier pour vos virées en terres inconnues",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "11 Rue de la Gerbe, 69002 Lyon"
)
val_solo.save!
val_solo.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645785425/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_11.36.59_zvbpy7.png')
val_solo.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645785787/Image_d_iOS_v5jkly.jpg')
rocky_valboa = Valentin.new(
  name:    "Rocky VALboa",
  price: 65,
  user: user2,
  short_description: "Rocky VALboa peut faire de la bière en brassant de l'air.",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "57 Chemin des Bateliers, 73100 Aix-les-bains"
)
rocky_valboa.save!
rocky_valboa.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645785781/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_11.42.55_vtbli1.png')
rocky_valboa.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786128/IMG_2585_nvufaj.jpg')
obi_val_kenobi = Valentin.new(
  name:    "Obi-VAL Kenobi",
  price: 500,
  user: user2,
  short_description: "Jouer avec le GROS sabre laser de VAL.",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "11 Rue de la Gerbe, 69002 Lyon"
)
obi_val_kenobi.save!
obi_val_kenobi.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786123/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_11.48.37_vib8cu.png')
obi_val_kenobi.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786339/28080568_10214640294990541_1545037484_o_slu2nc.jpg')
valverine = Valentin.new(
  name:    "Valverine",
  price: 300,
  user: user1,
  short_description: "Pour une nuit torride et pleine de griffes",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "50 rue du Général Ailleret, 97430 Le Tampon"
)
valverine.save!
valverine.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786315/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_11.51.50_erfaad.png')
valverine.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786512/38500087_529096694204397_7479487827164528640_n_nuyy73.jpg')
lavalbo = Valentin.new(
  name:    "LAVALbo",
  price: 40,
  user: user2,
  short_description: "Pour avoir les mains propres.",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "57 rue Léon Dierx, 87280 Limoges"
)
lavalbo.save!
lavalbo.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786507/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_11.55.01_fptzvb.png')
lavalbo.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786626/258200362_887986651905812_5357741160013992072_n_yqpim3.jpg')
texas = Valentin.new(
  name:    "VALker Texas Ranger",
  price: 150,
  user: user2,
  short_description: "Gouter au revolver six-coups du Ranger VAL.",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "12 avenue de Bouvines, 97233 Schoelcher"
)
texas.save!
texas.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786620/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_11.56.46_gdplla.png')
texas.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786927/177499863_3158258067735376_7288844407712486172_n_v6kzmn.jpg')
valentin_golfeur = Valentin.new(
  name:    "Tiger Val",
  price: 430,
  user: user2,
  short_description: "Un swipe hors pair ",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "11 Rue de la Gerbe, 69002 Lyon"
)
valentin_golfeur.save!
valentin_golfeur.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645786922/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_12.01.55_uyqnda.png')
valentin_golfeur.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645544332/valentin2.jpg')
valentin_paternel = Valentin.new(
  name:    "Daddy Valentin",
  price: 90,
  user: user2,
  short_description: "Un homme mur et mature",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "11 Rue de la Gerbe, 69002 Lyon"
)
valentin_paternel.save!
valentin_paternel.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645787208/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_12.05.04_a6yulx.png')
valentin_paternel.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645787302/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_12.07.55_zb3wo5.png')
baby_valentin = Valentin.new(
  name:    "Baby Val ",
  price: 1000,
  user: user2,
  short_description: "Sans doute la forme la plus mignonne des Valentins.",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "71 Rue du Palais, 93800 Épinay-sur-seine"
)
baby_valentin.save!
baby_valentin.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645787308/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_12.08.00_he7iqx.png')
baby_valentin.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645788045/IMG_2651_mu0mhc.jpg')
valentin_chauve= Valentin.new(
  name:    "Val sans cheveux",
  price: 70,
  user: user2,
  short_description: "Son crâne chauve va vous éblouir",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "49 rue Léon Dierx, 59160 Lomme"
)
valentin_chauve.save!
valentin_chauve.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645788038/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_12.20.32_zoybsm.png')
valentin_chauve.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645792595/IMG_2650_eyu59q.jpg')
valentin_wc = Valentin.new(
  name:    "Valentin WC",
  price: 25,
  user: user2,
  short_description: "Un Valentin triple epaisseur pour plus de confort.",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "41 rue Adolphe Wurtz, 76140 Le Petit-quevilly"
)
valentin_wc.save!
valentin_wc.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645792611/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_13.36.46_gylecs.png')
valentin_wc.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645792844/IMG_2652_psexab.jpg')
val_stone = Valentin.new(
  name:    "Val stone",
  price: 20,
  user: user2,
  short_description: "Un val fatigué.... ",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "40 rue Gontier-Patin, 80100 City:  Abbeville"
)
val_stone.save!
val_stone.photo.attach(io: file, filename: 'valentin2.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645792835/Capture_d_e%CC%81cran_2022-02-25_a%CC%80_13.40.29_xt8wko.png')
val_stone.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."


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
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645716116/Capture_d_e%CC%81cran_2022-02-24_a%CC%80_16.21.51_tdwjet.png')
valentin.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."


file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/c_scale,h_479,w_281/v1645708788/273047015_1008803049728066_239459524054551337_n_sqfocm.jpg')
valentina = Valentin.new(
  name:    "Valentina",
  price: 42,
  user: user2,
  short_description: "Valentina vous propose un service d’accueil et d’assistance à la hauteur de vos attentes ;)",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
  adress: "10 Avenue des champs-élysées, 75008 Paris"
)
valentina.save!
valentina.photo.attach(io: file, filename: 'valentin1.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645714780/Capture_d_e%CC%81cran_2022-02-24_a%CC%80_15.34.02_u9umtg.png')
valentina.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."


file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645715984/Capture_d_e%CC%81cran_2022-02-24_a%CC%80_16.19.24_t1jgn5.png')
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
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645716025/Capture_d_e%CC%81cran_2022-02-24_a%CC%80_16.20.20_vhzmqn.png')
val_la_menace.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."


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
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645714767/Capture_d_e%CC%81cran_2022-02-24_a%CC%80_15.34.31_vekbep.png')
a_val.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."


file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1645709003/unnamedfffff_pplqfd.jpg')
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
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645714775/Capture_d_e%CC%81cran_2022-02-24_a%CC%80_15.34.17_msns0o.png')
val_pls.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."


file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645708038/Image_d_iOS_bxxd9m.png')
val = Valentin.new(
  name:    "Le Val de l'enfer",
  price: 300,
  user: user2,
  adress: "20 Rue Saint Nicolas, 59000 Lille",
  short_description: "Louer Le Val de l'enfer et immergez-vous dans votre ville. Il vous transportera au plus profon de votre cœur avec ses 2 000 ans d’histoire et vous éblouira par sa beauté",
  long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
)
val.save!
val.photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/sirchamallow/image/upload/v1645714769/Capture_d_e%CC%81cran_2022-02-24_a%CC%80_14.44.20_iefecu.png')
val.marker_photo.attach(io: file, filename: 'valentin3.jpg', content_type: 'image/jpg')
print "."

puts ""
puts "#{Valentin.count} valentins created"
puts "Creating booking"

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

reviews1 = Review.create!(
  rating: 4.0,
  comment: "Un val vraiment seduisant",
  user: user1,
  valentin: don_val
)
reviews1.save!

reviews2 = Review.create!(
  rating: 3.0,
  comment: "un valentin dangereux",
  user: user1,
  valentin: valentin_la_bagarre
)
reviews2.save!

reviews3 = Review.create!(
  rating: 1.0,
  comment: "Valentin qui soutient malheuresement la pire equipe de Londres",
  user: user2,
  valentin: valentin_blues
)
reviews3.save!

reviews4 = Review.create!(
  rating: 4.0,
  comment: "Un val aventurier",
  user: user2,
  valentin: val_solo
)
reviews4.save!

reviews5 = Review.create!(
  rating: 2.0,
  comment: "Assez decu du sabre ..",
  user: user1,
  valentin: obi_val_kenobi
)
reviews5.save!

reviews6 = Review.create!(
  rating: 5.0,
  comment: "Un valboa bagareur",
  user: user2,
  valentin: rocky_valboa
)
reviews6.save!

reviews7 = Review.create!(
  rating: 2.0,
  comment: "Des griffes de petit chat",
  user: user1,
  valentin: valverine
)
reviews7.save!

reviews8 = Review.create!(
  rating: 5.0,
  comment: "super efficace!",
  user: user1,
  valentin: lavalbo
)
reviews8.save!

reviews9 = Review.create!(
  rating: 4.0,
  comment: "Un sheriff super efficace",
  user: user1,
  valentin: texas
)
reviews9.save!

reviews10 = Review.create!(
  rating: 4.0,
  comment: "Un vrai beau club ce val",
  user: user2,
  valentin: valentin_golfeur
)
reviews10.save!

reviews11 = Review.create!(
  rating: 5.0,
  comment: "Pret à eduquer vos enfants",
  user: user2,
  valentin: valentin_paternel
)
reviews11.save!

reviews12 = Review.create!(
  rating: 5.0,
  comment: "Plus mignon tu meurs",
  user: user1 ,
  valentin: baby_valentin
)
reviews12.save!

reviews13 = Review.create!(
  rating: 2.0,
  comment: "Dieu merci il a encore des cheveux",
  user: user2,
  valentin: valentin_chauve
)
reviews13.save!

reviews14 = Review.create!(
  rating: 5.0,
  comment: "Aussi utile qu'agréable",
  user: user1,
  valentin: valentin_wc
)
reviews14.save!

reviews15 = Review.create!(
  rating: 4.0,
  comment: "Je soupconne l'utilisation de psychotrope ",
  user: user1,
  valentin: val_stone
)
reviews15.save!

reviews16 = Review.create!(
  rating: 5.0,
  comment: "un jeune homme en rut",
  user: user2,
  valentin: valentin
)
reviews16.save!

reviews17 = Review.create!(
  rating: 4.0,
  comment: "vraiment top !!",
  user: user1,
  valentin: valentina
)
reviews17.save!

reviews18 = Review.create!(
  rating: 1.0,
  comment: "Faites attention..",
  user: user2,
  valentin: val_la_menace
)
reviews18.save!

reviews19 = Review.create!(
  rating: 4.0,
  comment: "Je me passe de commentaire..",
  user: user1,
  valentin: a_val
)
reviews19.save!

reviews20 = Review.create!(
  rating: 5.0,
  comment: "pauvre bébou",
  user: user1,
  valentin: val_pls
)
reviews20.save!

reviews21 = Review.create!(
  rating: 4.0,
  comment: "Le plus dangereux",
  user: user2,
  valentin: val
)
reviews21.save!
puts 'Finished!'
