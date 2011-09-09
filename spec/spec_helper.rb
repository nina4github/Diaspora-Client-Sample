#   Copyright (c) 2010, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

ENV["RAILS_ENV"] ||= 'test'
require File.join(File.dirname(__FILE__), '..', 'config', 'environment') unless defined?(Rails)
require 'rspec/rails'
require 'support/diaspora'

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
  config.mock_with :rspec

  config.use_transactional_fixtures = true

  config.before(:each, :type => :controller) do
    self.class.render_views
  end
end
