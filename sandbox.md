rails g resource Artist name:string bio:text --no-test-framework
rails g resource Genre name:string --no-test-framework
rails g resource Song name:string artist_id:integer genre_id:integer --no-test-framework

table "artists"
  string   "name"
  text     "bio"
 
table "genres"
  string   "name"
 
table "songs"
  string   "name"
  integer  "artist_id"
  integer  "genre_id"

A song belongs to an artist
A song belongs to a genre
A genre has many songs
An artist has many songs

touch app/views/artists/show.erb
touch app/views/artists/new.erb
touch app/views/artists/edit.erb

touch app/views/genres/show.erb
touch app/views/genres/new.erb
touch app/views/genres/edit.erb

touch app/views/songs/show.erb
touch app/views/songs/new.erb
touch app/views/songs/edit.erb
touch app/views/songs/index.erb
