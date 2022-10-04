class RemoveTestColumnFromTableName < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :test_column, :string
    remove_column :users, :test4_column, :string
    remove_column :users, :test3_column, :string
  end
end
