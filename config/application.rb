require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Prod
  class Application < Rails::Application
    config.load_defaults 7.0

    config.time_zone = 'Krasnoyarsk'

    config.i18n.default_locale = :ru

    config.generators do |g|
      g.test_framework :rspec,
                       view_specs: false,
                       helepr_specs: false,
                       routing_specs: false,
                       request_specs: false
    end
  end
end
