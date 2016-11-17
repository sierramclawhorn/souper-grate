class User < ApplicationRecord
  has_secure_password

  validates :password, confirmation: true
  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  has_many :recipies
  has_many :ratings

end
