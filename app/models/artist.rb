class Artist < ApplicationRecord
    has_many :songs
    has_many :genre, through: :songs
end
