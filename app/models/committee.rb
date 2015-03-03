class Committee < ActiveRecord::Base
  has_many :votes
  has_and_belongs_to_many :voivodships
  has_attached_file :logo, :styles => { :medium => "238x238>", 
                                   :thumb => "100x100>"
                                 }
  do_not_validate_attachment_file_type :logo_file_name

  

  attr_accessible :name, :logo_name, :logo_filepath, :logo_fileurl, :voivodship_ids, :image, :logo, :logo_file_name

  validates :name, presence: true, uniqueness: true



 

end
