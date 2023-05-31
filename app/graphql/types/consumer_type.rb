# frozen_string_literal: true

module Types
  class ConsumerType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :email, String
    field :age, String
    field :country, String
    field :region, Types::RegionType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
