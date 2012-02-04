class Apiv1::UsersController < Apiv1::BaseController
  
    #create a new user
    def new
        #create a new user
        @response = JSON.parse(forward('post', request.url, params))
        @uri=URI.parse(url)
        @uri.path="profiles/"+parmas[:useranme]
        #update profile data
        output(forward('put', @uri.host + @uri.path, params))
    end
end