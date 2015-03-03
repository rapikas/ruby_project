class AddLogoToCommittee < ActiveRecord::Migration
  def change
    add_column :committees, :logo_file_name,    :string
    add_column :committees, :logo_content_type, :string
    add_column :committees, :logo_file_size,    :integer
    add_column :committees, :logo_updated_at,   :datetime
  end
end
