class Apiv1::UsersController < Apiv1::BaseController
  
    #create a new user
    def create
        #create a new user
        @response = JSON.parse(forward('post', request.url, params))
        @uri=URI.parse(request.url)
        @uri.path="profiles/"+parmas[:useranme]
        #update profile data
        output(forward('put', @uri.host + @uri.path, params))
    end
end