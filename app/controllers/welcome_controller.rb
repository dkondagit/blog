class WelcomeController < ApplicationController
  def index
  
	    if signed_in?
	      @micropost  = current_user.microposts.build
	    end
	  end
end
