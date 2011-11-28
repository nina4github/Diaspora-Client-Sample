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
  message = {
    :original_filename => params['myfile'].original_filename,
    :file => params['myfile'].tempfile
  }
  # message = {'myfile'=>
  #                 { 'original_filename'=>params['myfile'].original_filename,
  #                    'tempfile' =>File.new(params['myfile'].tempfile)
  #                    }
  #             } 
      
      #payload = { :myfile => Faraday::UploadIO.new(params['myfile'].tempfile, 'image/jpeg'),:original_filename => params['myfile'].original_filename } # this might be cool but I don't know how to use it
      
      @response = JSON.parse(current_user.access_token.token.post('/api/v0/aspects/'+params[:activity]+'/upload', message, {'Content-type'=>'multipart/form-data'}))
    
      File.open('public/images/' + params['myfile'].original_filename, "wb") do |f|
        f.write(params['myfile'].tempfile.read)
      end
    
 
  
  return "The file was successfully uploaded!"
end
end

