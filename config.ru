$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'slack-google-bot'
require 'web'

Thread.new do
  begin
    SlackGoogleBot::App.instance.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run SlackGoogleBot::Web
