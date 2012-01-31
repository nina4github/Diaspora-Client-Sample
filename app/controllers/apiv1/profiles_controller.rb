class Apiv1::ProfilesController < Apiv1::BaseController
  
    #get a users' profile
    def show
        output(forward('get', request.url))
    end
    
end