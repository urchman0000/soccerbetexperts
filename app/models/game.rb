class Game < ActiveRecord::Base
	mount_uploader :featured_photo, ImageUploader
end
