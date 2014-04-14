class Contact < ActiveRecord::Base
  self.primary_key = 'ContactID'
  self.table_name = 'contact'
  has_one :contactrelation, foreign_key: 'ContactID'

  delegate :Number, to: :contactrelation

  def nickname
    [self.FirstName, self.SecondName].find_all{|t| not (t =~ /EmptyValue/)}.join(" ")
  end
end
