class Artist < ApplicationRecord
  has_many :songs
  belongs_to :genre
end
