class CreateVoivodships < ActiveRecord::Migration
  def change
    create_table :voivodships do |t|
      t.string :name

      t.timestamps
    end
  end
end
