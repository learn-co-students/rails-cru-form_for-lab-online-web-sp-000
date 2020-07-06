# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: "Dr Dre", bio: "Started with NWA")
Artist.create(name: "Miley Cyrus", bio: "Former TV Star")
Artist.create(name: "Shania Twain", bio: "Has three kids")
Genre.create(name:"Hip-Hop")
Genre.create(name:"Pop")
Genre.create(name:"County")
Song.create(name:"Nuttin But A Thing", artist_id: 1, genre_id: 1)
Song.create(name:"The Climb", artist_id: 2, genre_id: 2)
Song.create(name:"Party For Two", artist_id: 3, genre_id: 3)