class Chat < ActiveRecord::Base
  has_many :events, foreign_key: 'ChatID'
  self.primary_key = 'ChatID'
  self.table_name = 'chatinfo'
end
