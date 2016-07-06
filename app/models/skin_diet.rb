class SkinDiet < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "750x300>", thumb: "100x100>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	has_attached_file :pdf
	validates_attachment :pdf, content_type: { content_type: "application/pdf" }
end
