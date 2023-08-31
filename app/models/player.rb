class Player < ApplicationRecord
  belongs_to :user
  belongs_to :party
  # has_many :boardgames, through: :parties
  # has_one_attached :photo
end
