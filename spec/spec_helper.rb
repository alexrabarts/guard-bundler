require 'rubygems'
require 'coveralls'
Coveralls.wear!

require 'guard/npm'
require 'rspec'

ENV["GUARD_ENV"] = 'test'

Dir["#{File.expand_path('..', __FILE__)}/support/**/*.rb"].each { |f| require f }

puts "Please do not update/create files while tests are running."

RSpec.configure do |config|
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true

  config.before(:each) do
    allow(::Guard::Notifier).to receive_messages(notify: true)
    @fixture_path = Pathname.new(File.expand_path('../fixtures/', __FILE__))
  end

end
