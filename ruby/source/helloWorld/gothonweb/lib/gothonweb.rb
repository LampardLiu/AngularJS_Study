require_relative "gothonweb/version"
require "sinatra"
require "erb"
#
#module Gothonweb
get '/' do
    greeting = "Hello, World!"
    erb :hello_form, :locals => {:greeting => greeting}
     #   return greeting
end

get  '/hello' do
    name = params[:name] || "NoBody"
    greeting = "Hello #{name}!"
    erb :index, :locals => {:greeting => greeting}
 end

post '/hello' do
    greeting = "#{params[:greet] || "Hello"}, #{params[:name] || "Nobody"}"
    erb :index, :locals => {:greeting => greeting}
end
#end