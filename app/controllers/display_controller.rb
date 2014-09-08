class DisplayController < ApplicationController
	layout 'home'
	active_scaffold :employee do |config|
		config.label = "Employees List"
		config.actions.exclude :nested
    		config.show.link.page = true
    		config.create.link.page = true
    		config.update.link.page = true
		config.columns = [ :emp_id, 
				   :first_name,
				   :last_name,
				   :email,
				   :date_of_birth,
				   :phone_number,
				   :date_of_joining,
				   :pan_number,
				   :pf_number,
				   :account_number,
				   :bank,
				   :full_name, 
				   :designation, 
				   :department,
				   :salaries
				]
		config.list.columns   = [ :emp_id, :full_name, :designation,:department]
		config.create.columns = [ :emp_id, 
                                   	  :first_name,
                                  	  :last_name,
                                          :email,
                                   	  :date_of_birth,
                                   	  :phone_number,
                                   	  :date_of_joining,
                                   	  :pan_number,
                                   	  :pf_number,
                                   	  :account_number,
                                   	  :bank,
                                   	  :full_name, 
                                   	  :designation, 
                                   	  :department,
					  :salary
                                	]
		config.update.columns = [ :emp_id,
                                          :first_name,
                                          :last_name,
                                          :email,
                                          :date_of_birth,
                                          :phone_number,
                                          :date_of_joining,
                                          :pan_number,
                                          :pf_number,
                                          :account_number,
                                          :bank,
                                          :full_name,
                                          :designation,
                                          :department,
					  :salary
					]
		config.update.link.label = "Edit"
	end
end
