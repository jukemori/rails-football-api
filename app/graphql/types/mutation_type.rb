# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :delete_user, mutation: Mutations::DeleteUser
    field :login, mutation: Mutations::Login
    field :logout, mutation: Mutations::Logout
    field :create_favorite_player, mutation: Mutations::CreateFavoritePlayer
    field :delete_favorite_player, mutation: Mutations::DeleteFavoritePlayer
  end
end
