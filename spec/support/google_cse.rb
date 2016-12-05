RSpec.configure do |config|
  config.before do
    ENV['GOOGLE_CSE_ID'] ||= 'API_ID'
    ENV['GOOGLE_API_KEY'] ||= 'API_KEY'
  end
end
