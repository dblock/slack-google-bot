module SlackGoogleBot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help' do |client, data, _match|
        send_message_with_gif client, data.channel, 'See https://github.com/dblock/slack-google-bot, please.', 'help'
      end
    end
  end
end
