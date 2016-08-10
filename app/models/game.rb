class Game < ActiveRecord::Base
	mount_uploader :featured_photo, ImageUploader
	
	#associations
	has_many :features
	has_many :teams, through: :features
end
