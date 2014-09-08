class EmployeesController < ApplicationController
  	layout 'home'
=begin
	active_scaffold :employee do |config|
		config.label = "Employees List"
    		config.show.link.page = true
		config.actions.exclude :nested
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
				   :salary
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
                                          :designation,
                                          :department,
					  :salary
					]
		config.show.columns.exclude :salary
		config.update.link.label = "Edit"
		columns[:emp_id].label = "Employee ID"
		columns[:full_name].label = "Employee Name"
		columns[:full_name].sort_by :sql => "employee.first_name"
	end
=end

def list
	@emp_list = Employee.all
end

def edit
	@employee = Employee.find(params[:id])
end

def update
	@employee = Employee.find(params[:id])
	@employee.update_attributes!(params[:emp])
        redirect_to :action => 'list'	
end
end
