class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
  belongs_to :rol
  has_many :schedules
end
