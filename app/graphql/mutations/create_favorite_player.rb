module Mutations
  class CreateFavoritePlayer < BaseMutation
    argument :user_id, ID, required: true
    argument :player_id, ID, required: true

    field :favorite_player, Types::FavoritePlayerType, null: false
    field :errors, [String], null: false

    def resolve(user_id:, player_id:)
      user = User.find(user_id)
      player = Player.find(player_id)
      favorite_player = FavoritePlayer.new(user: user, player: player)

      if favorite_player.save
        { favorite_player: favorite_player, errors: [] }
      else
        { favorite_player: nil, errors: favorite_player.errors.full_messages }
      end
    end
  end
end
