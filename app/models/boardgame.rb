class Boardgame < ApplicationRecord
  has_many :parties
  has_many :game_to_users
  validates :title, :description, :play_time, :age, :image,
  :rating, :min_player, :max_player, :category, presence: true
  has_one_attached :photo
end
