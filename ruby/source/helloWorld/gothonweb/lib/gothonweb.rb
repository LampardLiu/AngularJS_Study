require_relative "gothonweb/version"
require "sinatra"

#
#module Gothonweb
  get '/' do
    greeting = "Hello, World!"
    erb :index, :locals => {:greeting => greeting}
 #   return greeting
  end
#end