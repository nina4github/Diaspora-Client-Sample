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
  params[:activity]='shopping'
  user = User.find_by_diaspora_id('communityawvej@idea.itu.dk:3000')
  request.env["warden"].set_user(user, :scope => :user, :store => true)
  @response = JSON.parse(current_user.access_token.token.post('/api/v0/aspects/'+params[:activity]+'/upload', params['myfile']))

  File.open('public/images/' + params['myfile'].original_filename, "wb") do |f|
    f.write(params['myfile'].tempfile.read)
  end
  return "The file was successfully uploaded!"
end
end