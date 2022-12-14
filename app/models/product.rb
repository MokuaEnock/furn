class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 20, maximum: 200 }

  belongs_to :user
end
