class ActivityController < ApplicationController
	layout 'indexLayout'
def view
  	@adventures = Adventures.find(:all)
end	
def new

end
def create
	
	

		if current_user
			@adventures = Adventures.new(:title => params[:title], :Adate => params[:Adate], :desc => params[:desc], :location=> params[:location], :time => params[:time], :created_by => current_user.email )
			@adventures.save
		else
			@adventures = Adventures.new(:title => params[:title], :Adate => params[:Adate], :desc => params[:desc], :location=> params[:location], :time => params[:time])
			@adventures.save

		end

		if @adventures.save
		redirect_to activity_path(@view)
		end

	end
end