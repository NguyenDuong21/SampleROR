class AddTest4ColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :test4_column, :string
  end
end
