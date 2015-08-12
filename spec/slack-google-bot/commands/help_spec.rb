require 'spec_helper'

describe SlackGoogleBot::Commands::Help do
  def app
    SlackGoogleBot::App.new
  end
  it 'help' do
    expect(message: 'google help').to respond_with_slack_message('See https://github.com/dblock/slack-google-bot, please.')
  end
end
