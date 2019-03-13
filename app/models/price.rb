class Price < ActiveRecord::Base
  belongs_to :product
  belongs_to :store
  validates :product, presence: true
  validates :store, presence: true
  validates :price, presence: true

end
