class ElectoralDistrict < ActiveRecord::Base
  belongs_to :voivodship
  attr_accessible :name, :valid_votes, :invalid_votes, :voivodship_id, :number_of_voters
  has_many :votes
  has_one :user

  validates :name, presence: true, uniqueness: true
  validates :valid_votes, numericality: true
  validates :invalid_votes, numericality: true

end
