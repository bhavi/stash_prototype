class FileUpload < ActiveRecord::Base
  has_attached_file :upload_file_name, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :upload_file_name, :content_type => /\Aimage\/.*\Z/
end
