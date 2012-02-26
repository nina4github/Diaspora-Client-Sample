class Apiv1::AspectsController < Apiv1::BaseController
  
    # GET a list of all aspects for a user
    def show
        output(forward('get',request.url))
    end
    
    #create a new aspect
    def create
        output(forward('post',request.url, params))
    end
    
end