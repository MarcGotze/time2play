class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :players
  has_many :parties, through: :players

  validates :username, presence: true
  has_one_attached :avatar

  def boardgame_players(boardgame_id)
    parties_ids = parties.where(boardgame_id: boardgame_id).pluck(:id)
    user_ids    = Player.where(party_id: parties_ids).pluck(:user_id)
    User.where(id: user_ids)
  end
end
