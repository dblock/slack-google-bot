require 'spec_helper'

describe SlackGoogleBot::App do
  def app
    SlackGoogleBot::App.new
  end
  context 'authed' do
    it_behaves_like 'a slack ruby bot'
  end
end
