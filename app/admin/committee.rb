ActiveAdmin.register Committee do

form :html => { :enctype => "multipart/form-data" } do |f|
f.inputs "details", :multipart => true do
    f.input :name
    f.input :logo_name
    f.input :logo, :as => :file
    f.input :voivodships, :as => :check_boxes 
  end
    f.actions
end

  filter :created_at
  filter :name
  filter :voivodships

  index do
    column :name
    column "Logo" do |committee|
    link_to(image_tag(committee.logo.url(:thumb), :height => '100'), admin_committee_path(committee))
  end
    column :created_at
    column "Voidoship" do |committee|
     (committee.voivodships.map{ |p| p.name })
  end
    actions
  end
end