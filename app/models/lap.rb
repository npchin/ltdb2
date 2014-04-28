class Lap < ActiveRecord::Base
	belongs_to :user

	belongs_to :modification 

	belongs_to :track
end
