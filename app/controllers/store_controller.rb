class StoreController < ApplicationController
  def index
  	@items = Item.order(:name)
  end
end
