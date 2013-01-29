class Resume < ActiveRecord::Base
  attr_accessible :candidate_id, :file, :remove_file, :filename, 
  :remote_file_url, :file_url, :url

  belongs_to :candidate

  mount_uploader :file, FileUploader

  validate :file_size_validation, if: "file?"

  def file_size_validation
    errors[:file] << "should be 2MB or less" if file.size > 2.megabytes
  end

  def filename
  	@filename = self.file.path.split("/").last
  end

end
