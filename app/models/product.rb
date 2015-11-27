class Product < ActiveRecord::Base
  has_many :prices
  has_many :stores, through: :prices
  validates :name, presence: true, length: { minimum: 2 }
end
