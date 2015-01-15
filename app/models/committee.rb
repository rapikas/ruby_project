class Committee < ActiveRecord::Base
  has_many :votes
  has_many :voivodship_committee
  attr_accessible :name
end
