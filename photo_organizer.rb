require 'sinatra'
require 'json'

get '/' do
  {:directories => Dir['*/'].map {|name| name.gsub('/', '')}}.to_json
end

#get '/**' do
  #params[:splat]
#end
