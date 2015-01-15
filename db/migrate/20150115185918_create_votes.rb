class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :number_of_votes
      t.references :electoral_district
      t.references :committee

      t.timestamps
    end
    add_index :votes, :electoral_district_id
    add_index :votes, :committee_id
  end
end
