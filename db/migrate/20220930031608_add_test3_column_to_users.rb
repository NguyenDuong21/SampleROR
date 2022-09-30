class AddTest3ColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :test3_column, :string
  end
end
