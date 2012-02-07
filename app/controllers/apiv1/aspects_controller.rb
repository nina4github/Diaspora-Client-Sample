class Apiv1::AspectsController < Apiv1::BaseController
  
    # GET a list of all aspects for a user
    def index
        output(forward('get',request.url))
    end
    
    #create a new aspect
    def show
        output(forward('post',request.url, params))
    end
    
end