class User < ActiveRecord::Base
  mount_uploader :avatar, FileUploader
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
  # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar
 
  private
    def avatar_size_validation
      errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
    end
end