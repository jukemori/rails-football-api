module Mutations
  class DeleteFavorite < BaseMutation
    argument :id, ID, required: true

    field :success, Boolean, null: false
    field :errors, [String], null: false

    def resolve(id:)
      favorite = Favorite.find(id)

      if favorite.destroy
        { success: true, errors: [] }
      else
        { success: false, errors: favorite.errors.full_messages }
      end
    end
  end
end
