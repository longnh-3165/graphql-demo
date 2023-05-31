# frozen_string_literal: true

module Types
  class RegionType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :consumers, Types::ConsumerType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
