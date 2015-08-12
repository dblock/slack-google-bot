require 'spec_helper'

describe SlackRubyBot::Commands::Hi do
  def app
    SlackGoogleBot::App.new
  end
  it 'says hi' do
    expect(message: 'google hi').to respond_with_slack_message('Hi <@user>!')
  end
end
