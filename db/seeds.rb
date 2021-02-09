# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: "Queen", bio: "British band that changed it all.")

Genre.create(name: "Rock")

Song.create(name: "We Will Rock You", artist_id: 1, genre_id: 1)