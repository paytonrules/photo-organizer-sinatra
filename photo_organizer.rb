require 'sinatra'
require 'json'

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

get '/directories' do
  {:directories => Dir['PhotoLibrary/*/'].map {|name| name.gsub('PhotoLibrary/', '').gsub('/', '')}}.to_json
end

#get '/**' do
  #params[:splat]
#end
