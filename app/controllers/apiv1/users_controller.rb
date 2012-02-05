class Apiv1::UsersController < Apiv1::BaseController
  
    #create a new user
    def create
        #create a new user
        @response = JSON.parse(forward('post', request.url, params))
        @uri=URI.parse(request.url)
<<<<<<< HEAD
=======
        @uri.path="/apiv1/profiles/"+params[:username]
>>>>>>> afabc4f6bd67baf3d719831b7bac8f4da449f101
        #update profile data
        output(forward('put',  "http://idea.itu.dk/apiv1/profiles/"+params[:username], params))
    end
end
