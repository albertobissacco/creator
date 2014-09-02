class User < ActiveRecord::Base
	has_many :things, :as => :creator
end
