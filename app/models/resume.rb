class Resume < ActiveRecord::Base
  attr_accessible :candidate, :candidate_id, :file, :remove_file, :filename

  belongs_to :candidate

  mount_uploader :file, FileUploader

  validate :file_size_validation, if: "file?"

  def file_size_validation
    errors[:file] << "should be 2MB or less" if file.size > 2.megabytes
  end

end
