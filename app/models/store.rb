class Store < ActiveRecord::Base
  has_many :prices
  has_many :products, through: :prices
  validates :name, presence: true, length: { minimum: 3 }
end
