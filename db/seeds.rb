# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

td = Artist.create(name:"Tripping Daisy", bio: "From Texas")
bj = Artist.create(name:"Billy Joel", bio: "From Long Island")

ir = Genre.create(name:"Indie Rock")
cr = Genre.create(name:"Classic Rock")

ph = Song.create(name:"Pirhana", artist_id: td.id, genre_id: ir.id)
at = Song.create(name:"Allentown", artist_id: bj.id, genre_id: cr.id)