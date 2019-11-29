class Artist < ApplicationRecord
  has_many :songs, :through => :artist_id
end
