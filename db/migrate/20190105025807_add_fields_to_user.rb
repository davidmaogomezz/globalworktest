class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, :default => ''
    add_column :users, :last_name, :string, :default => ''
  end
end
