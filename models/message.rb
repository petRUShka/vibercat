class Message < ActiveRecord::Base
  belongs_to :event, foreign_key: "EventID"
  self.primary_key = 'Token'
end
