require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

module LibraryManagement
  class Application < Rails::Application
    config.load_defaults 5.2
    config.i18n.load_path += Dir["#{Rails.root.to_s}/config/locales/*.yml"]
    config.i18n.default_locale = :en
  end
end
