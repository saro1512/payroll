class SalaryController < ApplicationController
	active_scaffold :salary do |config|
		config.label = ' '
		config.actions = [:search, :subform,]
		config.columns = [ :basic,
				   :hra,
				   :conveyance,
				   :special_allowance,
				   :medical_allowance,
				   :food_allowance,
				   :pf_mgmt,
				   :pf,
				   :esi,
				   :professional_tax,
				   :tds
				]
		config.subform.layout = :vertical
		config.columns[:basic].label 		= "Basic"
		config.columns[:hra].label 		= "HRA"
		config.columns[:conveyance].label 	= "Conveyance"
		config.columns[:special_allowance].label = "Special Allowance"
		config.columns[:medical_allowance].label= "Medical Allowance"
		config.columns[:food_allowance].label 	= "Food Allowance"
		config.columns[:pf_mgmt].label 		= "PF Management"
		config.columns[:pf].label		= "Provident Fund"
		config.columns[:esi].label		= "ESI"
		config.columns[:professional_tax].label = "Professional Tax"
		config.columns[:tds].label		= "TDS"			
	end

end
