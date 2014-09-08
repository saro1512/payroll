# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AppDemo::Application.initialize!
require 'calendar_date_select'
CalendarDateSelect.format = :iso_date
