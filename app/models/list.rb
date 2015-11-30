class List < ActiveRecord::Base
  belongs_to :store
  has_many(:items, dependent: :destroy)
end
