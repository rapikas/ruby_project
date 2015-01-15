class CreateElectoralDistricts < ActiveRecord::Migration
  def change
    create_table :electoral_districts do |t|
      t.string :name
      t.integer :valid_votes
      t.references :voivodship

      t.timestamps
    end
    add_index :electoral_districts, :voivodship_id
  end
end
