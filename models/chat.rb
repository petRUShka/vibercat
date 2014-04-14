class Chat < ActiveRecord::Base
  has_many :events, foreign_key: 'ChatID'
  self.primary_key = 'ChatID'
  self.table_name = 'chatinfo'

  def display_name
    if self.Name == 'Group'
      self.Token
    else
      self.Name
    end
  end
end
