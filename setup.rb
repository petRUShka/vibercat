require 'rubygems'
require 'bundler/setup'

require 'active_record'


module Profile
  def self.viber_db
    @viber_db ||= Dir["#{File.expand_path('~')}/.ViberPC/**/viber.db"].first
  end
  def self.number
    @number ||= viber_db.sub(/.+\.ViberPC\//, '').sub('/viber.db', '')
  end
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database  => Profile.viber_db
)
ActiveRecord::Base.connection

Dir["#{File.expand_path('..', __FILE__)}/models/*.rb"].each {|f| require f}
