# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.destroy_all
Artist.destroy_all

artist1 = Artist.create!(name: "A.R.Rahman",image_url: "https://tinyurl.com/y8g3dx8n")
artist2 = Artist.create!(name: "Shreya Ghoshal",image_url: "https://tinyurl.com/y7sydvqt")
artist3 = Artist.create!(name: "Sonu Nigam",image_url: "https://tinyurl.com/yd6y34qz")
artist4 = Artist.create!(name: "Arjit Singh",image_url: "https://tinyurl.com/y8g3dx8n")


artist1.songs.create!(
  [
    {title: "Roja", genere: "Romantic Song"},
    {title: "Dil se", genere: "Romantic Song"}
  ])

artist2.songs.create!([{title: "Goomar", genere: "Dance Song"}])
artist3.songs.create!([{title: "Kal ho na ho", genere:"Sad Song"}])
artist4.songs.create!([{title: "Ashique", genere: "Sad Song"}])
