# You should be up and running without editing this file.

require "rubygems"
require "sinatra"
require "Haml"
require "Sass"
require "compass"

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views'
    config.output_style = :compact
  end
  
  set :haml, { :format => :html5 }
  set :sass, Compass.sass_engine_options
end

get '/' do
  haml :index
end

get '/stylesheet.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :stylesheet
end

# This adds another page.
# Create about.haml in views.

# get '/about' do
#   haml :about
# end