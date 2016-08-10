class League < ActiveRecord::Base
	mount_uploader :logo, ImageUploader
end
