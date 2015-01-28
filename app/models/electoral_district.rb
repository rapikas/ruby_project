class ElectoralDistrict < ActiveRecord::Base
  belongs_to :voivodship
  attr_accessible :name, :valid_votes, :invalid_votes
  has_many :votes
  has_one :user

  validates :name, presence: true, uniqueness: true, lenght: {maximum:60}
  validates :valid_votes, numericality: true
  validates :invalid_votes, numericality: true

end
