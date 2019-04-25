module Types
  class AuthEmailInput < BaseInputObject
    graphql_name 'AUTH_EMAIL'
    argument :email, String, required: true
    argument :password, String, required: true
  end
end
