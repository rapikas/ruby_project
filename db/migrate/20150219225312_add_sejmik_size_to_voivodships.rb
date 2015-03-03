class AddSejmikSizeToVoivodships < ActiveRecord::Migration
  def change
    add_column :voivodships, :sejmik_size, :integer
  end
end
