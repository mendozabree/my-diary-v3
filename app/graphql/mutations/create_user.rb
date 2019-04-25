module Mutations
  class CreateUser < BaseMutation
    class AuthSignUpData < Types::BaseInputObject
      argument :email, Types::AuthEmailInput, required: false
    end

    argument :name, String, required: true
    argument :auth_data, AuthSignUpData, required: false

    type Types::UserType

    def resolve(name: nil, auth_data: nil)
      User.create!(
        name: name,
        email: auth_data&.[](:email)&.[](:email),
        password: auth_data&.[](:email)&.[](:password)
      )
    end
  end
end
