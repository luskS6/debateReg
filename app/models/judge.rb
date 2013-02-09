class Judge < ActiveRecord::Base
  attr_accessible :debate_exp, :jfirstName, :jlastName, :school_id
  belongs_to :school
  validates :debate_exp, :jfirstName, :jlastName, :presence => true
end
