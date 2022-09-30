class AddTestColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :test_column, :string
  end
end
