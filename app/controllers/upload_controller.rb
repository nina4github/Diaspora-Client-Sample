class UploadController< ApplicationController
require 'rubygems'
require 'sinatra'
require 'haml'

# Handle GET-request (Show the upload form)
get "/upload" do
  haml :upload
end      

# Handle POST-request (Receive and save the uploaded file)
def create
  File.open('public/images' + params['myfile'].original_filename, "wb") do |f|
    f.write(params['myfile'].tempfile.read)
  end
  return "The file was successfully uploaded!"
end
end