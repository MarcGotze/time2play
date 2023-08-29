class GameToUser < ApplicationRecord
  belongs_to :user
  belongs_to :boardgame
  validates :owned, presence: true
end
