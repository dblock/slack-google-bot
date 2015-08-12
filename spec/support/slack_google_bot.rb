RSpec.configure do |config|
  config.before do
    SlackRubyBot.config.user = 'google'
  end
end
