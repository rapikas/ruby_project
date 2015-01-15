class Voivodship < ActiveRecord::Base
  has_many :electoral_districts
  has_many :voivodship_committee
  attr_accessible :name
end
