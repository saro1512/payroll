class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :user do |t|
      	t.string 	:login
      	t.string 	:password
      	t.references 	:employee
      	t.boolean	:administrator
      	t.timestamps
    end
  end

  def self.down
	drop_table :user
  end
end
