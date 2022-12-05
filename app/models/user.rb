class User < ApplicationRecord
  has_secured_password
  has_many :recipes
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
