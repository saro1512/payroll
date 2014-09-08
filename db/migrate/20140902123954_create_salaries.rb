class CreateSalaries < ActiveRecord::Migration
  def self.up
    create_table :salary do |t|
      	t.references	:employee
      	t.integer 	:basic
      	t.integer 	:hra
      	t.integer 	:conveyance
      	t.integer 	:special_allowance
      	t.integer 	:medical_allowance
      	t.integer 	:food_allowance
      	t.integer 	:pf_mgmt
#Deductions
      	t.integer 	:pf
      	t.integer 	:esi
      	t.integer 	:professional_tax
      	t.integer 	:tds
      	t.timestamps
    end
  end

  def self.down
	drop_table :salary
  end
end
