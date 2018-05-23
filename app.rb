require "sinatra"
require "haml"

get "/" do
  @title = "Pepro Code Analysis"
  haml :index
end
