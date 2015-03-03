class AddNumberOfVotersToElectoralDistricts < ActiveRecord::Migration
  def change
    add_column :electoral_districts, :number_of_voters, :integer
  end
end
