# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.create(name: 'Elton John', bio: 'Sir Elton Hercules John CBE, English singer, songwriter, pianist, composer.')
Artist.create(name: 'Cecilia Bartoli', bio: 'Italian coloratura mezzo-soprano opera singer. Best known for her interpretations of Mozart and Rossini')
Genre.create(name: 'Rock')
Genre.create(name: 'Opera')
Song.create(name: 'Philadelphia Freedom', artist_id: 1, genre_id: 1)
Song.create(name: 'Non piu mesta', artist_id: 2, genre_id: 2)