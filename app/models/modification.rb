class Modification < ActiveRecord::Base
	belongs_to :car

	has_many :laps
end
