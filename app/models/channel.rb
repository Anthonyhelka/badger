class Channel < ApplicationRecord
  has_many :channel_messages, dependent: :destroy, inverse_of: :channel
  belongs_to :server, inverse_of: :channel

  validates :name, presence: true
end
