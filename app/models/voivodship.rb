class Voivodship < ActiveRecord::Base
  has_many :electoral_districts
  has_and_belongs_to_many :committees
  attr_accessible :name

  validates :name, presence: true, uniqueness: true, lenght: {maximum:60}

end
