class Artist < ActiveRecord::Base
	has_attached_file :imagen, styles: { medium: "720x720>", thumb: "100x100>" }
	validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/
	belongs_to :user
end
