navigate
  shows the name on the show page in a h1 tag (FAILED - 1)
  to artist pages (FAILED - 2)
  shows the bio on the show page in a p tag (FAILED - 3)

form
  shows a new form that submits content and redirects and prints out params (FAILED - 4)
  shows an edit form that submits content, redirects and prints out params (FAILED - 5)

navigate
  shows the name on the show page in a h1 tag (FAILED - 6)
  to genre pages (FAILED - 7)

form
  shows a new form that submits content and redirects and prints out params (FAILED - 8)
  shows an edit form that submits content and redirects and prints out params (FAILED - 9)

navigate
  shows the name on the show page in a h1 tag (FAILED - 10)
  displays a link to the genre page (FAILED - 11)
  displays a link to the artist page (FAILED - 12)
  to song pages (FAILED - 13)

form
  shows a new form that submits content and redirects and prints out params (FAILED - 14)
  shows a new form that submits content and redirects and prints out params (FAILED - 15)

index
  displays the song name (FAILED - 16)

Failures:

  1) navigate shows the name on the show page in a h1 tag
     Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

     NameError:
       uninitialized constant Artist
     # ./spec/features/artist_spec.rb:5:in `block (2 levels) in <top (required)>'

  2) navigate to artist pages
     Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

     NameError:
       uninitialized constant Artist
     # ./spec/features/artist_spec.rb:5:in `block (2 levels) in <top (required)>'

  3) navigate shows the bio on the show page in a p tag
     Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

     NameError:
       uninitialized constant Artist
     # ./spec/features/artist_spec.rb:5:in `block (2 levels) in <top (required)>'

  4) form shows a new form that submits content and redirects and prints out params
     Failure/Error: visit new_artist_path

     NameError:
       undefined local variable or method `new_artist_path' for #<RSpec::ExampleGroups::Form:0x00007fc8599e9818>
     # ./spec/features/artist_spec.rb:26:in `block (2 levels) in <top (required)>'

  5) form shows an edit form that submits content, redirects and prints out params
     Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

     NameError:
       uninitialized constant Artist
     # ./spec/features/artist_spec.rb:37:in `block (2 levels) in <top (required)>'

  6) navigate shows the name on the show page in a h1 tag
     Failure/Error: @genre = Genre.create(name: "My Genre")

     NameError:
       uninitialized constant Genre
     # ./spec/features/genre_spec.rb:5:in `block (2 levels) in <top (required)>'

  7) navigate to genre pages
     Failure/Error: @genre = Genre.create(name: "My Genre")

     NameError:
       uninitialized constant Genre
     # ./spec/features/genre_spec.rb:5:in `block (2 levels) in <top (required)>'

  8) form shows a new form that submits content and redirects and prints out params
     Failure/Error: visit new_genre_path

     NameError:
       undefined local variable or method `new_genre_path' for #<RSpec::ExampleGroups::Form_2:0x00007fc859a8bac8>
     # ./spec/features/genre_spec.rb:21:in `block (2 levels) in <top (required)>'

  9) form shows an edit form that submits content and redirects and prints out params
     Failure/Error: @genre = Genre.create(name: "My Genre")

     NameError:
       uninitialized constant Genre
     # ./spec/features/genre_spec.rb:31:in `block (2 levels) in <top (required)>'

  10) navigate shows the name on the show page in a h1 tag
      Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

      NameError:
        uninitialized constant Artist
      # ./spec/features/song_spec.rb:5:in `block (2 levels) in <top (required)>'

  11) navigate displays a link to the genre page
      Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

      NameError:
        uninitialized constant Artist
      # ./spec/features/song_spec.rb:5:in `block (2 levels) in <top (required)>'

  12) navigate displays a link to the artist page
      Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

      NameError:
        uninitialized constant Artist
      # ./spec/features/song_spec.rb:5:in `block (2 levels) in <top (required)>'

  13) navigate to song pages
      Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

      NameError:
        uninitialized constant Artist
      # ./spec/features/song_spec.rb:5:in `block (2 levels) in <top (required)>'

  14) form shows a new form that submits content and redirects and prints out params
      Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

      NameError:
        uninitialized constant Artist
      # ./spec/features/song_spec.rb:35:in `block (2 levels) in <top (required)>'

  15) form shows a new form that submits content and redirects and prints out params
      Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

      NameError:
        uninitialized constant Artist
      # ./spec/features/song_spec.rb:35:in `block (2 levels) in <top (required)>'

  16) index displays the song name
      Failure/Error: @artist = Artist.create(name: "My Artist", bio: "My artist bio")

      NameError:
        uninitialized constant Artist
      # ./spec/features/song_spec.rb:68:in `block (2 levels) in <top (required)>'
