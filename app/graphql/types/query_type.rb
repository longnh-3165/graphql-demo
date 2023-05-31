module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :regions, [Types::RegionType], null: false, description: "region list"
    def regions
      Region.all
    end

    field :consumers, [Types::ConsumerType], null: false, description: "consumers list"
    def consumers
      Consumer.all
    end
  end
end
