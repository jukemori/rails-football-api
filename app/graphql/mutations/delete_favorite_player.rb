module Mutations
  class DeleteFavoritePlayer < BaseMutation
    argument :id, ID, required: true

    field :success, Boolean, null: false
    field :errors, [String], null: false

    def resolve(id:)
      favorite_player = FavoritePlayer.find(id)

      if favorite_player.destroy
        { success: true, errors: [] }
      else
        { success: false, errors: favorite_player.errors.full_messages }
      end
    end
  end
end
