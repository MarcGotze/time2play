class Party < ApplicationRecord
  belongs_to :boardgame
  has_many :players
  has_many :users, through: :players
end
