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

def destroy

end

end
