class Admin < ActiveRecord::Base
  attr_accessible :contact1, :contact2, :early_invoice, :phoneNum1, :phoneNum2, :school_id
  belongs_to :school
  validates :contact1, :contact2, :early_invoice, :phoneNum1, :phoneNum2, :school_id, :presence => true
  validates_uniqueness_of :contact2, :scope => [:contact1, :contact2]
  validates_presence_of :contact1
  validates :phoneNum1, :phoneNum2, :confirmation => false , :length => {:minimum => 10, :too_short => "Please enter a 10 digit phone number"}
  
#class ContactValid < ActiveModel::Validator
#  def val(record)
   def contactVal
    if :contact1 == :contact2
       record.errors[:base] << "You must enter two different people"
    end
  end
#end

end
