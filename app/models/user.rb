class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :players, dependent: :destroy
  has_many :parties, through: :players
  has_many :game_to_users, dependent: :destroy
  has_many :boardgames, through: :game_to_users
  has_many :achievements, dependent: :destroy
  has_many :challenges, through: :achievements

  validates :username, presence: true
  has_one_attached :avatar

  def boardgame_players(boardgame_id)
    parties_ids = parties.where(boardgame_id:).pluck(:id)
    user_ids    = Player.where(party_id: parties_ids).pluck(:user_id)
    User.where(id: user_ids)
  end

  def victories
    parties.select { |party| party.players.order(:score).last.user == self }.count
  end
end
