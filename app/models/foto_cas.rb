class FotoCas < ApplicationRecord
	include ImageUploader[:image]

	belongs_to :cas_practic
end
