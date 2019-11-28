class User < ApplicationRecord
  has_many :servers, inverse_of: :user

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true, presence: true

  mount_uploader :avatar, AvatarUploader
end
