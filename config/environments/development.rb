DiasporaPluginSandbox::Application.configure do
  # use Diaspora Configuration
  require ENV['DIASPORA_HOME'] + '/config/environments/development'
end
