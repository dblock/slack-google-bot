RSpec.configure do |config|
  config.before do
    ENV['GOOGLE_CSE_ID'] ||= 'cse_id'
  end
end
