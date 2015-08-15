class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :getCharacter
  before_action :authenticate_user!
def getCharacter
	if user_signed_in?
		@characters = Character.where(User_id: current_user)
		if @characters.size == 1
			@character = @characters.first
		end
	end  
end

end
