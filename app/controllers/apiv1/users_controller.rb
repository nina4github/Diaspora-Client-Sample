class Apiv1::UsersController < Apiv1::BaseController
  
    #create a new user
    def create
        #create a new user
        response1 = JSON.parse(forward('post', request.url, params))
        @uri=URI.parse(request.url)
        @uri.path="/apiv1/profiles/"+params[:username]
        #update profile data
        if response1.has_key? 'mes'
            response2=forward('put', @uri.to_s, params)
            output("user create, "+ response2.to_s) 
        else
            output("user creation failed, username or email exists!")
        end
    end
end