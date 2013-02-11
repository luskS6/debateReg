class MainController < ApplicationController
  def index
     if school_signed_in?
	@teams = Team.where(:school_id => [current_school.id])
	@judges = Judge.where(:school_id => [current_school.id])
     end	


  end
end
