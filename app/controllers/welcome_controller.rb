class WelcomeController < ApplicationController

	def index
	  @districts = District.all
	  @schools = School.where("district_id = ?", District.first.id)
	end
	 
	def show
	  @school = School.find_by("id = ?", params[:trip][:school_id])
	end
	
	def update_schools
	  @schools = School.where("district_id = ?", params[:district_id])
	  respond_to do |format|
	    format.js
	  end
	end

end
