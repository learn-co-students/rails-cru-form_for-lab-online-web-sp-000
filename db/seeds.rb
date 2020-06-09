# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
artist = Artist.create(name: "Amon Amarth", bio: "Viking metal group")
genre = Genre.create(name: "Metal")
song = Song.create(name: "Twilight of the Thunder God", artist_id: artist.id, genre_id: genre.id)
