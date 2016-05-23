class LearningModule < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "750x300>", thumb: "100x100>" }, default_url: "klc.jpg"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	has_many :tests
end
