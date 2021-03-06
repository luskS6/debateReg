class School < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :sName, :repfname, :replname, :sphoneNum, :email, :password, :password_confirmation, :remember_me, :role_id
  # attr_accessible :title, :body
  has_many :teams, :dependent => :destroy
  has_one :hotel, :dependent => :destroy
  has_one :req, :dependent => :destroy
  has_many :judges, :dependent => :destroy
  has_one :admin, :dependent => :destroy
  has_one :transpo, :dependent => :destroy
  belongs_to :role , :dependent => :destroy

#  ROLES = %w[admin, school]


def teamCost(school)
	tcost = 0
        jcost = 0
        hcost = 0
    tcost = 120 * (Team.where("school_id=?", school).count)
    
    Hotel.where("school_id=?", school).each do |hotel|
	hcost = 85 * (hotel.twoRooms) + 105 * (hotel.fourRooms)
	    
    end    
   

   if (Team.where("school_id=?", school).count - 1)%2 == 1   
      jcost = (((Team.where("school_id=?", school).count - 1)/2) + 1 - Judge.where("school_id=?", school).count)*60
   else
      jcost = (((Team.where("school_id=?", school).count - 1)/2)  - Judge.where("school_id=?", school).count)*60
   end

   

  return tcost + jcost + hcost
  #return school
end

end
