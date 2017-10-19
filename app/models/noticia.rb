class Noticia < ApplicationRecord

	include ImageUploader::Attachment.new(:image)

end
