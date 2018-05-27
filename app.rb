require "sinatra"
require "haml"
require "./lib/analysis"

get "/" do
  haml :index
end

post "/analysis" do
  analyze = Analyzer.new params[:code]
  if analyze.func
    data = { result: analyze.stdout, error: analyze.stderr }
    data.to_json
  end
end
