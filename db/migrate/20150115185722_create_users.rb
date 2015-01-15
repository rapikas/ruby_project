class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.references :electoral_district

      t.timestamps
    end
    add_index :users, :electoral_district_id
  end
end
