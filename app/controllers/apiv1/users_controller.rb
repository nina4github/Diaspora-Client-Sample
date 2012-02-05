class Apiv1::UsersController < Apiv1::BaseController
  
    #create a new user
    def create
        #create a new user
        response1 = JSON.parse(forward('post', request.url, params))
        @uri=URI.parse(request.url)
        @uri.path="/apiv1/profiles/"+params[:username]
        #update profile data
        if response1.status==200
            response2=forward('put', @uri.to_s, params)
            output(response1.to_s + response2.to_s) 
        else
            output("username or email exists")
        end
    end
end
