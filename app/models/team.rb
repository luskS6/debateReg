class Team < ActiveRecord::Base
  attr_accessible :school_id, :teamName, :texp, :tfirstName1, :tfirstName2, :tlastName1, :tlastName2, :tseed
  belongs_to :school
  validates :teamName, :tfirstName1, :tfirstName2, :tlastName1, :tlastName2, :tseed, :presence => true

def teamCost(school_id)
	cost = Integer.new
    Team.find_each("school_id=?", school_id) do |team|
        cost = cost + 120
    return cost 
end
end

end
