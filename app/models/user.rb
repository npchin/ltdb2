class User < ActiveRecord::Base

has_many :cars

has_many :laps

#define full name

	def full_name
	return first_name + ' ' + last_name
end

validates :first_name, :presence => true
validates :last_name, :presence => true
validates :email, :presence => true, :uniqueness => true 

end
