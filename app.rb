require "sinatra"
require "haml"
require "./lib/analysis"

get "/" do
  haml :index
end

post "/analysis" do
  analyze = Analyzer.new params[:code]
  data = { result: analyze.func }
  data.to_json
end
