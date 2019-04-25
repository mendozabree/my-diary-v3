module Mutations
  class CreateEntry < BaseMutation
    argument :title, String, required: true
    argument :description, String, required: true
    argument :body, String, required: true

    type Types::EntryType

    def resolve(title: nil, description: nil, body: nil)
      Entry.create!(
        title: title,
        description: description,
        body: body,
        user: context[:current_user]
      )
    end
  end
end
