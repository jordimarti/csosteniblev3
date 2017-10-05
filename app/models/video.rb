class Video < ApplicationRecord

	include ImageUploader::Attachment.new(:image)
	
end
