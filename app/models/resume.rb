class Resume < ActiveRecord::Base
  attr_accessible :candidate_id, :resume, :remove_resume

  belongs_to :candidate

  mount_uploader :resume, ResumeUploader

  validate :resume_size_validation, :if => "resume?"

  def resume_size_validation
    errors[:resume] << "should be 2MB or less" if resume.size > 2.megabytes
  end


end
