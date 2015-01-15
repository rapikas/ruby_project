class VoivodshipCommittee < ActiveRecord::Base
  belongs_to :committee
  belongs_to :voivodship
  # attr_accessible :title, :body
end
