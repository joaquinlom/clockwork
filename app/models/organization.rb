class Organization < ActiveRecord::Base
	validates :description,:presence => true
  validates :name,:presence => true
  validates :name, :length => {:minimum => 4}
	has_many :memberships
	has_many :users, :through => :memberships
end
