require 'sinatra/base'

module SlackGoogleBot
  class Web < Sinatra::Base
    get '/' do
      'Slack integration with Google, https://github.com/dblock/slack-google-bot.'
    end
  end
end
