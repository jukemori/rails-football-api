module Mutations
  class Logout < BaseMutation
    field :success, Boolean, null: false
    field :errors, [String], null: false

    def resolve
      { success: true, errors: [] }
    end
  end
end
