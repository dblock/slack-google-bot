require 'http'

module SlackGoogleBot
  module Commands
    class Google < SlackRubyBot::Commands::Base
      match(/^(?<bot>\w*)\s(?<expression>.*)$/) do |client, data, match|
        expression = match['expression'].strip
        results = JSON.parse HTTP.get('https://www.googleapis.com/customsearch/v1',
                                      params: {
                                        q: expression,
                                        key: ENV['GOOGLE_API_KEY'],
                                        cx: ENV['GOOGLE_CSE_ID']
                                      })
        result = results['items'].first if results['items']
        if result
          message = result['title'] + "\n" + result['link']
        else
          message = "No search results for `#{expression}`"
        end
        send_message client, data.channel, message
      end
    end
  end
end
