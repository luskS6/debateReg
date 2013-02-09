class Transpo < ActiveRecord::Base
  attr_accessible :fpickup, :fpickup_number, :fpickup_time, :school_id, :sdropoff, :sdropoff_number, :sdropoff_time, :spickup, :spickup_number, :spickup_time
end
