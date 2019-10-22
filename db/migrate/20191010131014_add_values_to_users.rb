class AddValuesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :position, :string
    add_column :users, :team, :string
    add_column :users, :department, :string
  end
end
