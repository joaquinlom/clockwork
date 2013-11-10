class WelcomeController < ApplicationController
	def index
    if session[:user_id] == nil
      render()
    else
      render 'organizations/index'
    end
	end
end
