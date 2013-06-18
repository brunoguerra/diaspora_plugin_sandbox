require 'pathname'

# Set up gems listed in the Gemfile.
gemfile = Pathname.new(__FILE__).dirname.join('..').expand_path.join('Gemfile')
begin
  ENV['BUNDLE_GEMFILE'] = gemfile.to_s
  require 'bundler'
  Bundler.setup
rescue Bundler::GemNotFound => e
  STDERR.puts e.message
  STDERR.puts "Try running `bundle install`."
  exit!
end if File.exist?(gemfile)