# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :delete_user, mutation: Mutations::DeleteUser
    field :login, mutation: Mutations::Login
    field :logout, mutation: Mutations::Logout
    field :create_favorite, mutation: Mutations::CreateFavorite
    field :delete_favorite, mutation: Mutations::DeleteFavorite
  end
end
