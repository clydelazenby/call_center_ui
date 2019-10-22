class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :age
      t.integer :birthday
      t.integer :account
      t.string :product

      t.timestamps
    end
  end
end
