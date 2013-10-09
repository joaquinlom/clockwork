class Schedule < ActiveRecord::Base
	belongs_to :shedule_details
	belongs_to :checks
end
