class Hotel < ActiveRecord::Base
  attr_accessible :fourRooms, :school_id, :twoRooms
  belongs_to :school
  validates :fourRooms, :twoRooms, :presence => true
end
