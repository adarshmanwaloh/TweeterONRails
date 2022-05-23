class User < ActiveRecord::Base
  mount_uploader :avatar, FileUploader
  has_many :followers
  has_many :tweets
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
  # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar
 
  validates :first_name, length: { in: 5..50 }, presence: true
  validates :last_name, length: { in: 5..50 }, presence: true
  validates :avatar, presence: true

  private
    def avatar_size_validation
      errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
    end
end