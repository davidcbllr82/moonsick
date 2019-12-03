# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# generate 50 profiles

p "Creating 50 profiles"

50.times do |u|
  url = "https://source.unsplash.com/random/?portrait"
  profile = User.new(
    email: Faker::Internet.unique.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    username: Faker::Name.unique.name,
    bio: Faker::Movies::VForVendetta.speech,
    location: Faker::Address.city,
    )
  profile.remote_profile_avatar_url = url
  profile.remote_profile_banner_url = "https://source.unsplash.com/random/?textures-patters"
  profile.spotify_top_1 = "spotify:track:1rgnBhdG2JDFTbYkYRZAku"
  profile.spotify_top_2 = "spotify:track:21jGcNKet2qwijlDFuPiPb"
  profile.spotify_top_3 = "spotify:track:7LzouaWGFCy4tkXDOOnEyM"
  profile.spotify_top_4 = "spotify:track:4tidSEPF7Dbxcdxv3VyIHd"
  profile.spotify_top_5 = "spotify:track:0Y2cjFzr3R7KLPeFyxaggg"
  profile.save
end

p "Here is 50 new profiles"
