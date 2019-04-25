module Types
  class MutationType < BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_entry, mutation: Mutations::CreateEntry
    field :signin_user, mutation: Mutations::SignInUser
  end
end
