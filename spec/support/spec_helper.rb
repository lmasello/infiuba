require 'simplecov'
SimpleCov.start
require 'factory_girl'
require 'faker'
require 'webmock/rspec'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.before(:all) do
    FactoryGirl.reload
  end

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
    Timecop.return
  end
end

RSpec.configure do |config|
  config.after(:each) do |test|
    if test.metadata[:dictum]
    Dictum.endpoint(
      resource: test.metadata[:described_class].to_s.gsub('Api::V1::', '').gsub('Controller', ''),
      endpoint: request.fullpath,
      http_verb: request.env['REQUEST_METHOD'],
      description: test.metadata[:dictum_description],
      request_headers: { 'AUTHORIZATION' => 'user_token',
                         'Content-type' => 'application/json',
                         'Accept' => 'application/json' },
      request_path_parameters: request.env['action_dispatch.request.path_parameters'].except(:controller, :action),
      request_body_parameters: request.env['action_dispatch.request.parameters'].except('controller', 'action'),
      response_headers: response.headers,
      response_status: response.status,
      response_body: response_body
    )
    end
  end
end
