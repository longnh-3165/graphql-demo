module Types
  class MutationType < Types::BaseObject
    field :create_consumer, mutation: Mutations::CreateConsumer
  end
end
