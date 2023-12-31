module Mutations
  class CreateFavorite < BaseMutation
    argument :user_id, ID, required: true
    argument :player_id, ID, required: true

    field :favorite, Types::FavoriteType, null: false
    field :errors, [String], null: false

    def resolve(user_id:, player_id:)
      user = User.find(user_id)
      player = Player.find(player_id)
      favorite = Favorite.new(user: user, player: player)

      if favorite.save
        { favorite: favorite, errors: [] }
      else
        { favorite: nil, errors: favorite.errors.full_messages }
      end
    end
  end
end
