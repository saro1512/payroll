class AddGenderToEmployee < ActiveRecord::Migration
  def self.up
	unless column_exists? :employee, :gender
		add_column :employee, :gender, :string
	end
  end
  def self.down
	if column_exists? :employee, :gender
		remove_column :employee, :gender
	end
  end
end
