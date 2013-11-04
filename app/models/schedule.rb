class Schedule < ActiveRecord::Base
	belongs_to :checks
  has_many :schedule_details
  belongs_to :memberships
  
end
