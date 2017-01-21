module SlackGoogleBot
  module Commands
    class Default < SlackRubyBot::Commands::Base
      match(/^(?<bot>\w*)$/)

      def self.call(client, data, _match)
        client.say(text: SlackGoogleBot::ABOUT, channel: data.channel)
      end
    end
  end
end
