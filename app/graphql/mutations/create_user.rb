module Mutations
  class CreateUser < BaseMutation
    argument :username, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(username:, email:, password:)
      user = User.new(username:, email:, password:)

      if user.save
        { user: user, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
end
