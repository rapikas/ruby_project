ActiveAdmin.register ElectoralDistrict do

  filter :created_at
  filter :name
  filter :voivodship
  filter :valid_votes
  filter :number_of_voters

  index do
    column :name
    column :created_at
    column :voivodship
    column :valid_votes
    column :invalid_votes
    column :number_of_voters
    actions
  end
end


