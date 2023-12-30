# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :login, mutation: Mutations::Login
    field :create_favorite_player, mutation: Mutations::CreateFavoritePlayer
    field :delete_favorite_player, mutation: Mutations::DeleteFavoritePlayer
    field :logout, mutation: Mutations::Logout
  end
end
