class GameToUser < ApplicationRecord
  belongs_to :user
  belongs_to :boardgame
end
