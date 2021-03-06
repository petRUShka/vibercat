require './setup.rb'

Event.where('TimeStamp > ?', 1.month.ago.to_i).order(:TimeStamp).each do |e|
  begin
    puts "[#{e.chat.display_name}] #{e.created_at.strftime('%d.%m.%Y %H:%M:%S')}, #{e.contact_nickname}: #{e.message.try(:Body)}"
  rescue Errno::EPIPE
    break
  end
end
