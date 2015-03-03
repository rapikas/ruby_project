ActiveAdmin.register Voivodship do

form do |f|
 f.inputs "Details" do
    f.input :name
    f.input :sejmik_size
    f.input :committees, :as => :check_boxes
    actions
  end
end

  filter :created_at
  filter :name
  filter :committees
  filter :sejmik_size
   
  index do
    column :name
    column :sejmik_size
    column :created_at
    column "Committee" do |voivodship|
     (voivodship.committees.map{ |p| p.name })
  end
    column "Electoral District" do |voivodship|
     (voivodship.electoral_districts.map{ |p| p.name })
  end
    actions
  end
end