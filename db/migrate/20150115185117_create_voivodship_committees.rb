class CreateVoivodshipCommittees < ActiveRecord::Migration
  def change
    create_table :voivodship_committees do |t|
      t.references :committee
      t.references :voivodship

      t.timestamps
    end
    add_index :voivodship_committees, :committee_id
    add_index :voivodship_committees, :voivodship_id
  end
end
