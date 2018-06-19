require "sinatra"
require "haml"
require "./lib/analysis"

get "/" do
  haml :index
end

get "/analysis" do
  haml :analysis
end

post "/program" do
  program = Program.new params[:code]
  if program.func
    data = { result: program.stdout, error: program.stderr }
    data.to_json
  end
end
