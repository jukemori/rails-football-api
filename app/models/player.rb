class Player < ApplicationRecord
  has_many :favorite_players, dependent: :destroy
  has_many :users, through: :favorite_players
end
