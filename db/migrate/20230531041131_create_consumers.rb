class CreateConsumers < ActiveRecord::Migration[6.1]
  def change
    create_table :consumers do |t|
      t.string :name
      t.string :email
      t.string :age
      t.string :country
      t.references :region

      t.timestamps
    end
  end
end
