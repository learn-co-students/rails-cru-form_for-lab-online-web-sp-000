# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist1 = Artist.create(name: "Artist1", bio: "Bio for Artist1.")
artist2 = Artist.create(name: "Artist2", bio: "Bio for Artist2.")
artist3 = Artist.create(name: "Artist3", bio: "Bio for Artist3.")

genre1 = Genre.create(name: "Genre1")
genre2 = Genre.create(name: "Genre2")

Song.create(name: "Song1-11", artist_id: artist1.id, genre_id: genre1.id)
Song.create(name: "Song2-11", artist_id: artist1.id, genre_id: genre1.id)
Song.create(name: "Song3-11", artist_id: artist1.id, genre_id: genre1.id)
Song.create(name: "Song4-22", artist_id: artist2.id, genre_id: genre2.id)
Song.create(name: "Song5-22", artist_id: artist2.id, genre_id: genre2.id)
Song.create(name: "Song6-22", artist_id: artist2.id, genre_id: genre2.id)
Song.create(name: "Song7-31", artist_id: artist3.id, genre_id: genre1.id)
Song.create(name: "Song8-31", artist_id: artist3.id, genre_id: genre1.id)
Song.create(name: "Song9-32", artist_id: artist3.id, genre_id: genre2.id)
Song.create(name: "Song10-32", artist_id: artist3.id, genre_id: genre2.id)



