class User < ApplicationRecord
  has_secure_password

  has_many :pictures

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :username, uniqueness: true
  validates :username, presence: true

end
