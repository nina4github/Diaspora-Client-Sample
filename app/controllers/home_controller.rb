class HomeController < ApplicationController
  respond_to :html
  
  require 'rubygems'
  require 'sinatra'
  require 'haml'

  def show
    if current_user
      flash[:notice] = "YAY!"
      @current_user = current_user
      render "success" 
    else
      user = User.find_by_diaspora_id('communityawvej@idea.itu.dk:3000')
      request.env["warden"].set_user(user, :scope => :user, :store => true)
      render "success" 
    end
  end
  
 

  # Handle GET-request (Show the upload form)
  get "/upload" do
    haml :upload
  end      

  # Handle POST-request (Receive and save the uploaded file)
  post "/upload" do
    File.open('public/images' + params['myfile'][:filename], "w") do |f|
      f.write(params['myfile'][:tempfile].read)
    end
    return "The file was successfully uploaded!"
  end
  
def logout
  request.env['warden'].logout
  render "show"
end

end

