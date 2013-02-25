class Role < ActiveRecord::Base
  attr_accessible :name


  has_many :schools, :dependent => :destroy
end
