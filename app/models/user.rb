class User < ActiveRecord::Base
  belongs_to :electoral_district
  attr_accessible :first_name, :surname
end
