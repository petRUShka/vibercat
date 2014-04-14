class Event < ActiveRecord::Base
  has_one :message, foreign_key: "EventID"
  belongs_to :chat
  belongs_to :contactrelation, foreign_key: 'Number'
  has_one :contact, through: :contactrelation
  self.primary_key = 'EventID'

  def contact_nickname
    if self.Direction == 0
      self.contact.nickname
    else
      'me'
    end
  end

  def created_at
    DateTime.strptime(self.TimeStamp.to_s, '%s')
  end
end
