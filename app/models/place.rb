class Place < ActiveRecord::Base

	geocoded_by :address # , :latitude, :longitude

	after_validation :geocode

	validates :title, presence: true
	validates :address, presence: true

end
