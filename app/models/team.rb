class Team < ActiveRecord::Base
	mount_uploader :logo, ImageUploader
end
