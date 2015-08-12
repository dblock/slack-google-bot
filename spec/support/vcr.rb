require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures'
  config.hook_into :webmock
  config.default_cassette_options = { record: :new_episodes }
  config.configure_rspec_metadata!
  # Removes all private data (Basic Auth, Set-Cookie headers...)
  config.before_record do |i|
    i.request.headers.delete('Authorization')
  end
end
