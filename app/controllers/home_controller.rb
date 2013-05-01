class HomeController < ApplicationController
  layout 'indexLayout'
  def home
  end
  def userHome
  	@adventures=Adventures.find(:all)
  end
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
