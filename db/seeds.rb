# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Artist.create(name: "Aerosmith", bio: "rag dolls and walking this way")
a2 = Artist.create(name: "RunDMC", bio: "Addidas that walk this way")
a3 = Artist.create(name: "Guns N Roses", bio: "A jungle of a paradise City")
g1 = Genre.create(name: "Rap")
g2 = Genre.create(name: "Rock")
s1 = Song.create(name: "Rag Doll", artist_id: Artist.find_by(name: "Aerosmith").id, genre_id: Genre.find_by(name: "Rock").id)
s2 = Song.create(name: "Walk This Way Rock", artist_id: Artist.find_by(name: "Aerosmith").id, genre_id: Genre.find_by(name: "Rock").id)
s3 = Song.create(name: "Angel", artist_id: Artist.find_by(name: "Aerosmith").id, genre_id: Genre.find_by(name: "Rock").id)
s4 = Song.create(name: "My Addidas", artist_id: Artist.find_by(name: "RunDMC").id, genre_id: Genre.find_by(name: "Rap").id)
s5 = Song.create(name: "Walk This Way Rap", artist_id: Artist.find_by(name: "RunDMC").id, genre_id: Genre.find_by(name: "Rap").id)
s6 = Song.create(name: "It's Tricky", artist_id: Artist.find_by(name: "RunDMC").id, genre_id: Genre.find_by(name: "Rap").id)
s7 = Song.create(name: "Paradise City", artist_id: Artist.find_by(name: "Guns N Roses").id, genre_id: Genre.find_by(name: "Rock").id)
s8 = Song.create(name: "Sweet Child Of Mine", artist_id: Artist.find_by(name: "Guns N Roses").id, genre_id: Genre.find_by(name: "Rock").id)
s9 = Song.create(name: "Welcome To The Jungle", artist_id: Artist.find_by(name: "Guns N Roses").id, genre_id: Genre.find_by(name: "Rock").id)