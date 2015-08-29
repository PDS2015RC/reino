class MainController < ApplicationController
  def index

    if user_signed_in? && current_user.admin == true

      redirect_to admin_index_url

    elsif user_signed_in?
      	  
    	#

    else

      redirect_to new_user_session_path

    end


  end
end
