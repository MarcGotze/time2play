class Player < ApplicationRecord
  belongs_to :user
  belongs_to :party
  # has_one_attached :photo
end
