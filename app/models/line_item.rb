class LineItem < ActiveRecord::Base
  belongs_to :Item
  belongs_to :Inventory
end
