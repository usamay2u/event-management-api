class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  after_create :broadcast

  private

  def broadcast
    ActionCable.server.broadcast('conversations_channel', as_json.merge(action: 'CreateMessage'))
  end
end
