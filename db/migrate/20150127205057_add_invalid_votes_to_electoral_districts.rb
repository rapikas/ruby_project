class AddInvalidVotesToElectoralDistricts < ActiveRecord::Migration
  def change
    add_column :electoral_districts, :invalid_votes, :integer
  end
end
