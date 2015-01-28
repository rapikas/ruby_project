class Committee < ActiveRecord::Base
  has_many :votes
  has_and_belongs_to_many :voivodships
  attr_accessible :name, :logo_name

  validates :name, presence: true, uniqueness: true, lenght: {maximum:60}

end
