class Apiv1::UsersController < Apiv1::BaseController
  
    #create a new user
    def create
        #create a new user
        @response = JSON.parse(forward('post', request.url, params))
        @uri=URI.parse(request.url)
        @uri.path="/apiv1/profiles/"+params[:username]
        #update profile data
        output(forward('put', @uri.to_s, params))
    end
end