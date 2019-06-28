require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Myapp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.to_prepare do
      Devise::SessionsController.layout 'login'
    end
    config.serve_static_assets = true
    config.load_defaults 5.2
    config.i18n.default_locale = :"pt-BR"
  	I18n.enforce_available_locales = false
  	config.time_zone = "Brasilia"
    config.action_mailer.smtp_settings = {
        :authentication => :plain,
        :address => "smtp.mailgun.org",
        :port => 587,
        :domain => "sandbox82423.mailgun.org",
        :user_name => "postmaster@sandboxc83e576e591949708c6b10c5c45ece3c.mailgun.org",
        :password => "72152b287706df5844bbd6cb64c585c5-3939b93a-2987e481"
    }

    config.action_view.embed_authenticity_token_in_remote_forms = true
    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    I18n.config.enforce_available_locales = true
    config.i18n.available_locales = ["pt-BR"]
    config.i18n.default_locale = "pt-BR"
  end
end
