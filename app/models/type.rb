class Type < ActiveRecord::Base
	has_many :things

	validates :name, uniqueness: true

	scope :active, -> { where(active: 1) }
end
