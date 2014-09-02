class Organization < ActiveRecord::Base
	include GlobalID::Identification

	has_many :things, :as => :creator
end
