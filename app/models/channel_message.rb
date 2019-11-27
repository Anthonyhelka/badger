class ChannelMessage < ApplicationRecord
  belongs_to :channel, inverse_of: :channel_message

  validates :message, presence: true
end
