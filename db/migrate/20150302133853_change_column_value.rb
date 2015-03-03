class ChangeColumnValue < ActiveRecord::Migration
  def change
    change_column_null :committees_voivodships, :created_at, true
    change_column_null :committees_voivodships, :updated_at, true
  end
end
