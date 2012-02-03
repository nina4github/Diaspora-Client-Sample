class Users_controller < Apiv1::BaseController
  
    #create a new profile
    def new
        res=forward('post', request.url, params)
        output(@result)
    end
end