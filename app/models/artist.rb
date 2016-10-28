class Artist < ActiveRecord::Base
	has_attached_file :imagen, styles: { medium: "720x720>", thumb: "100x100>" }
	validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/
	
	:default_url => "/images/:style/missing.png",
    :url  => ":s3_domain_url",
    :path => "public/images/:id/:style_:basename.:extension",
    :storage => :fog,
    :fog_credentials => {
        provider: 'AWS',
        aws_access_key_id: "AKIAIBPGFBP4MD63WZXQ",
        aws_secret_access_key: "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"
    },
    fog_directory: "artist-board-alter"



	belongs_to :user
end
