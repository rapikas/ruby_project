class Vote < ActiveRecord::Base
  belongs_to :electoral_district
  belongs_to :committee
  attr_accessible :number_of_votes
end
