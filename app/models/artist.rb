class Artist < ApplicationRecord
  has_many :songs

  validates :name, :bio, presence: true
end
