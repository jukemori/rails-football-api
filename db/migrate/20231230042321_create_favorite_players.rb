class CreateFavoritePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :favorite_players do |t|
      t.references :user, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
