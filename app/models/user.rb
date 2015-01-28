class User < ActiveRecord::Base
  belongs_to :electoral_district
  attr_accessible :first_name, :surname, :login, :password

  validates :first_name, presence: true, lenght: {maximum:30}
  validates :surname, presence: true, lenght: {maximum:30}
  validates :login, presence: true, uniqueness: true, lenght: {maximum:30}

end
