class Party < ApplicationRecord
  belongs_to :boardgame
  has_many :players, dependent: :destroy
  has_many :users, through: :players
  validates :start_time, presence: true
  after_update :challenge_calcul, if: -> { end_time.present? }

  private

  def challenge_calcul
    # ENTREE
    # SORTIE : update achivement.completed = true
    players.each do |player|
      boardgame.challenges.each do |challenge|
        next unless player.score >= challenge.score
        challenge.achievements.where(user: player.user).each do |achievement|
          achievement.update(completed: true)
          achievement.user.update(level: achievement.user.level += 1)
        end
      end
    end
  end
end
