require 'spec_helper'

describe SlackGoogleBot::Commands::Default do
  def app
    SlackGoogleBot::App.new
  end
  it 'google' do
    expect(message: 'google').to respond_with_slack_message(SlackGoogleBot::ABOUT)
  end
  it 'Google' do
    expect(message: 'Google').to respond_with_slack_message(SlackGoogleBot::ABOUT)
  end
end
