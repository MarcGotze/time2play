class Boardgame < ApplicationRecord
  has_many :parties
  has_many :game_to_users
end
