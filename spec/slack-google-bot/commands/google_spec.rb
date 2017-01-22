require 'spec_helper'

describe SlackGoogleBot::Commands::Google, vcr: { cassette_name: 'google_search_popular_artists' } do
  def app
    SlackGoogleBot::App.new
  end
  it 'responds to search' do
    expect(message: 'google Who is the most popular artist in 2014?').to respond_with_slack_message(
      "The Top 14 Living Artists of 2014\nhttps://www.artsy.net/article/artsy-editorial-the-top-14-living-artists-of-2014"
    )
  end
end
