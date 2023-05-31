module Mutations
  class CreateConsumer < Mutations::BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :age, String, required: true
    argument :country, String, required: true
    argument :region_id, String, required: true

    type Types::ConsumerType

    def resolve(name:, email:, age:, country:, region_id:)
      region ||= Region.find(region_id)
      Consumer.create!(
        {
          name: name,
          email: email,
          age: age,
          country: country,
          region: region
        }
      )
    end
  end
end
