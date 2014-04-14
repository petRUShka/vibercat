require './setup.rb'

Event.where('TimeStamp > ?', 1.month.ago.to_i).each do |e|
  p "#{DateTime.strptime(e.TimeStamp.to_s,'%s')}, #{e.contact.nickname}, #{e.message.try(:Type)}, #{e.message.try(:Flag)}: #{e.message.try(:Body)}"
end
