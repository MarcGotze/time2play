class Party < ApplicationRecord
  belongs_to :boardgame
  has_many :players, dependent: :destroy
  has_many :users, through: :players
  validates :start_time, presence: true
end
