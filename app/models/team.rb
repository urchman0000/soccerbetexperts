class Team < ActiveRecord::Base
	mount_uploader :logo, ImageUploader
	
	#associations
	has_many :features
	has_many :games, through: :features
end
