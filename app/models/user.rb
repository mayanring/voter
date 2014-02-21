class User < ActiveRecord::Base
  has_secure_password
  # attr_accessor :email, :password, :password_confirmation

  validates_uniqueness_of :email

  has_many :votes
end
