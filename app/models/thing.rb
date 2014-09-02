class Thing < ActiveRecord::Base
	belongs_to :creator, polymorphic: true
	belongs_to :type

	validates :creator, presence: true
	validates :type, presence: true
	validates :name, presence: true
end
