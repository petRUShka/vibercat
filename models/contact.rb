class Contact < ActiveRecord::Base
  self.primary_key = 'ContactID'
  self.table_name = 'contact'
  has_one :contactrelation, foreign_key: 'ContactID'

  delegate :Number, to: :contactrelation

  def nickname
    if self.Number =~ /#{Profile.number}/
      "me (#{self.Number})"
    else
      [self.FirstName, self.SecondName, self.Number].find_all{|t| not (t =~ /EmptyValue/)}.join(" ")
    end
  end
end
