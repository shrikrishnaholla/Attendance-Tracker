class AddUsnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :USN, :string
  end
end
