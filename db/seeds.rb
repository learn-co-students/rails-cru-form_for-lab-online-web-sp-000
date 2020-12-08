# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: 'Testy', bio: 'Testy bio goes here....')
Artist.create(name: 'Demo', bio: 'Demo bio goes here....')
Artist.create(name: 'Fakey', bio: 'Fakey bio goes here....')
Genre.create(name: 'pop')
Genre.create(name: 'not pop')
Song.create(name: 'Great Song', artist_id: 1, genre_id: 1 )
Song.create(name: 'Another Great Song', artist_id: 1, genre_id: 2 )
Song.create(name: 'An OK Song', artist_id: 2, genre_id: 1 )
Song.create(name: 'Terrible Song', artist_id: 2, genre_id: 2 )