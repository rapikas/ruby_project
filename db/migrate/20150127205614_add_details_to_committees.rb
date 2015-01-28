class AddDetailsToCommittees < ActiveRecord::Migration
  def change
    add_column :committees, :logo_name, :string
    add_column :committees, :logo_filepath, :string
    add_column :committees, :logo_fileurl, :string
  end
end
