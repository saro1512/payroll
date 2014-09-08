class Employee < ActiveRecord::Base
  attr_accessible :first_name,
		  :last_name,
		  :emp_id,
		  :designation,
		  :department,
		  :date_of_joining,
		  :gender,
		  :email,
		  :phone_number,
		  :date_of_birth,
		  :pan_number,
		  :pf_number,
		  :account_number,
		  :bank 
  has_one :salary
  def full_name
	"#{self.first_name} #{self.last_name}"
  end
  def to_s
	full_name
  end
end
