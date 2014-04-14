class Event < ActiveRecord::Base
  has_one :message, foreign_key: "EventID"
  belongs_to :chat
  belongs_to :contactrelation, foreign_key: 'Number'
  has_one :contact, through: :contactrelation
  self.primary_key = 'EventID'
end
