class Apiv1::AspectsController < Apiv1::BaseController
  
    # GET a list of all aspects for a user
    def index
        output(forward('get',request.url))
    end
    
    # GET all posts within a specific aspect for the current user
    def posts
        output(forward('get',request.url))
    end
    
    # GET all contacts within a specific aspect for the current user
    def contacts
        output(forward('get',request.url))
    end
    
    #create a new aspect
    def new
        output(forward('post',request.url))
    end
    
end