class User < ApplicationRecord
  has_secure_password

  has_many :pictures

  has_many :comments

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :username, format: {without: /\s/, message:"must contain no spaces"}

  validates :password, length: 6..10
  # validates :password, confirmation: true

  


end
