class WelcomeController < ApplicationController
	def index
    if session[:user_id] == nil
      render()
    else
      redirect_to organizations_path
    end
	end
end
