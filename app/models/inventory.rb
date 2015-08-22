class Inventory < ActiveRecord::Base
  belongs_to :User
  has_many :line_items, dependent: :destroy
end
