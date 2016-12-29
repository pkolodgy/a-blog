class User < ApplicationRecord
  has_many :articles
  validates :username, presence: true
  validates :username, uniqueness: true
  has_secure_password
  validates :password, length: { minimum: 6 }
end
