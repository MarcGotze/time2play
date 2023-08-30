class Boardgame < ApplicationRecord
  has_many :parties, dependent: :destroy
  has_many :game_to_users, dependent: :destroy
  has_many :players, through: :parties

  validates :title, :description, :play_time, :age,
  :rating, :min_player, :max_player, :category, presence: true
  has_one_attached :photo
end
