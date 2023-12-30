class Player < ApplicationRecord
  has_many :favorite_players, dependent: :destroy
  has_many :users, through: :favorite_players

  after_destroy :delete_if_last_favorite_player

  private

  def delete_if_last_favorite_player
    # Delete the player only if there are no more associated favorite players
    self.destroy if favorite_players.empty?
  end
end
