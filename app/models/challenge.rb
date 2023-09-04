class Challenge < ApplicationRecord
  belongs_to :boardgame
  has_many :achievements, dependent: :destroy
  validates :title, presence: true

  CATEGORY = %w[badge challenge].freeze
end
