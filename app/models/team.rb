class Team < ActiveRecord::Base
  attr_accessible :school_id, :teamName, :texp, :tfirstName1, :tfirstName2, :tlastName1, :tlastName2, :tseed
  belongs_to :school
  validates :teamName, :tfirstName1, :tfirstName2, :tlastName1, :tlastName2, :tseed, :presence => true
end
