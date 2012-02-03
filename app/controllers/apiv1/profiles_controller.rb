class Apiv1::ProfilesController < Apiv1::BaseController
  
    #get a users' profile
    def show
        output(forward('get', request.url))
    end
    
    def update
        #output(forward('put', request.url, params))
        render :json=>{:text=>"test"}
    end
    
end