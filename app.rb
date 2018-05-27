require "sinatra"
require "haml"

get "/" do
  haml :index
end

post "/analysis" do
  puts params[:code]
end
