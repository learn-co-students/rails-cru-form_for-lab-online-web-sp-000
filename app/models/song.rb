class Song < ApplicationRecord
  belong_to :artist
  belong_to :genre
end
