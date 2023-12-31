class DropFavoritePlayers < ActiveRecord::Migration[7.1]
  def change
    drop_table :favorite_players
  end
end
