
require 'rails/all'
require File.expand_path('../boot', __FILE__)
require File.expand_path('../diaspora', __FILE__)


if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module DiasporaPluginSandbox
  class Application < Rails::Application
    config.i18n.default_locale = :"pt-BR"
  end
  
  Diaspora.configure_application(Application)
end
