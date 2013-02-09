class School < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :sName, :repfname, :replname, :sphoneNum, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :teams
  has_one :hotel
  has_one :req
  has_many :judges
  has_one :admin
  has_one :transpo
end
