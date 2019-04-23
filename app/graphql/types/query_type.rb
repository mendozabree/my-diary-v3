module Types
  class QueryType < BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :all_entries, [EntryType], null: false

    def all_entries
      Entry.all
    end
  end
end
