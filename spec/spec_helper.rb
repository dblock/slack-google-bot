$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))

require 'slack-ruby-bot/rspec'

Dir[File.join(File.dirname(__FILE__), 'support', '**/*.rb')].each do |file|
  require file
end

require 'slack-google-bot'
