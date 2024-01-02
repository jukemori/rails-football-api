class AddApiIdToPlayers < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :api_id, :integer
  end
end
