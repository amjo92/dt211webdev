class UsersController < ApplicationController
  layout 'indexLayout'
	def new
	@user = User.new
	end
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def create
		@user = User.new(params[:user])
			if @user.save
			redirect_to root_url, :notice => "Signed up!"
			else
			render "new"
			end
		end
end
