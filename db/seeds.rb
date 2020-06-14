# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = Artist.create([{name: "Frankie", bio: "Anchor's Away"}, {name: "Jimmy", bio:"Loves pasta"}, {name: "Jackie Chan", bio: "Loves to sing"}])
genres = Genre.create([{name: "Romance"}, {name: "Rap"}])
songs = Song.create([{name: "Endless Love", artist_id: 3, genre_id: 1}, {name: "Another Love", artist_id: 3, genre_id: 1}])