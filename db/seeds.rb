# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: 'Judy Collins', bio: 'American singer, songwriter. Born in Seattle WA')
Artist.create(name: 'Cecilia Bartoli', bio: 'Italian coloratura mezzo-soprano. Known for her interpretation of Mozart and Rossini')
Artist.create(name: 'Luther Vandross', bio: 'American singer, songwriter, producer. Smooth R&B with vocal agility')
Genre.create(name: 'Folk')
Genre.create(name: 'Opera')
Genre.create(name: 'R & B')
Song.create(name: 'Chelsea Morning', artist_id: 1, genre_id: 1)
Song.create(name: 'Non piu mesta', artist_id: 2, genre_id: 2)
Song.create(name: 'Never Too Much', artist_id: 3, genre_id: 3)
