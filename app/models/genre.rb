class Genre < ApplicationRecord
  has_many :songs, :through => :genre_id
end
