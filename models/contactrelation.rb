class Contactrelation < ActiveRecord::Base
  self.table_name = 'contactrelation'
  belongs_to :contact, foreign_key: 'ContactID'
  self.primary_key = 'Number'
end
