class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employee do |t|
      t.string 	:emp_id, :null => false
      t.string 	:first_name, :null => false
      t.string 	:last_name, :null => false
      t.date   	:date_of_birth
      t.string 	:email
      t.string 	:phone_number
      t.string 	:department
      t.string 	:designation
      t.date   	:date_of_joining
      t.string 	:pan_number
      t.string 	:pf_number
      t.integer :account_number
      t.string 	:bank
      t.timestamps
    end
  end

  def self.down
	drop_table :employee
  end
end
