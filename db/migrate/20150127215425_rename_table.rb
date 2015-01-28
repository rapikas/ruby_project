class RenameTable < ActiveRecord::Migration
  def change
    rename_table :voivodship_committees, :committees_voivodships
  end
end
