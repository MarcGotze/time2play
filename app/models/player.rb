class Player < ApplicationRecord
  belongs_to :user
  belongs_to :party
  # has_one_through :avatar
  after_create :add_achivements

  def add_achivements
    party.boardgame.challenges.each do |challenge|
      Achievement.create(challenge:, user:)
    end
  end
end
