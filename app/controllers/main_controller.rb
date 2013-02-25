class MainController < ApplicationController
  def index
     if school_signed_in?
	@teams = Team.where(:school_id => [current_school.id])
	@judges = Judge.where(:school_id => [current_school.id])
	@schools = School.all
     end	
  
  

  end

 def destroy
    @schools = School.find(params[:school])
    if @schools.present?
      @schools.destroy
    end
    redirect_to root_url
end

end
