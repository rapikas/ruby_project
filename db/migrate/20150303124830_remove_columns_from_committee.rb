class RemoveColumnsFromCommittee < ActiveRecord::Migration
  def change
    remove_column :committees, :logo_filepath,    :string
    remove_column :committees, :logo_fileurl,     :string
  end
end
