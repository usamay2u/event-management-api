class Message < ApplicationRecord
  belong_to :user
  belong_to :conversation
end
