class Req < ActiveRecord::Base
  attr_accessible :diet, :school_id, :special
  belongs_to :school
end
