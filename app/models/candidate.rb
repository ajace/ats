class Candidate < ActiveRecord::Base
  mount_uploader :resume, ResumeUploader

  attr_accessible :email, :name, :phone, :position, :resume, :remove_resume

  # candidate email does not need to be unique, so that a candidate can re-apply
  validates_presence_of :email
  # validates_format_of :email, with: /^.+@.+$/; not working correctly
  # validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  VALID_EMAIL_REGEX = /^.+@.+$/
  # /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i    # not validating correctly
  validates :email, format: { with: VALID_EMAIL_REGEX }
  # validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  validates_length_of :name, :minimum => 3, :maximum => 50 #, :allow_blank => false
  
  validate :resume_size_validation, :if => "resume?"

  has_one :resume

  def resume_size_validation
    errors[:resume] << "should be 2MB or less" if resume.size > 2.megabytes
  end

end
