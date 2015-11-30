class Product < ActiveRecord::Base
  has_many :prices
  has_many :stores, through: :prices
  validates :name, presence: true, length: {minimum: 2}

  #scope :value_from_price, ->(list) { joins(:prices).where("products.id = prices.product_id").where("prices.store.id = #{list}") }



  def full_name
    "#{self.name} #{self.alias}"
  end
end
