class Rol < ActiveRecord::Base
  has_many :memberships
end
