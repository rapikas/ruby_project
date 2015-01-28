class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_column :users, :password, :string
  end
end
