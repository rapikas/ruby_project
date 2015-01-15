class ElectoralDistrict < ActiveRecord::Base
  belongs_to :voivodship
  attr_accessible :name, :valid_votes
  has_many :votes
  has_one :user
end
