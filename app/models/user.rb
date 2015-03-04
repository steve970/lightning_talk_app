class User < ActiveRecorder::Base

  validates :email, presence: true, uniqueness: true
  has_secure_password

end
