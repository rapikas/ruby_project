class Voivodship < ActiveRecord::Base
  has_many :electoral_districts
  has_and_belongs_to_many :committees
  attr_accessible :name, :sejmik_size, :committee_ids

  accepts_nested_attributes_for :committees

  validates :name, presence: true, uniqueness: true

end
