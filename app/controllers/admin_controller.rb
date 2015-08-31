class AdminController < ApplicationController
  def index
  	@users = User.all
  	@chars = Character.all
  end
end
