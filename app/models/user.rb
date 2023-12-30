class User < ApplicationRecord
  has_secure_password
  has_many :favorite_players, dependent: :destroy
  has_many :players, through: :favorite_players
end
