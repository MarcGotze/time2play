class Player < ApplicationRecord
  belongs_to :user
  belongs_to :party
  # has_one_through :avatar
end
