class Server < ApplicationRecord
  has_many :users, inverse_of: :server
  has_many :channels, dependent: :destroy, inverse_of: :server

  validates :name, uniqueness: true, presence: true
end
