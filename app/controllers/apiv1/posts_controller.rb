class Posts_controller < Apiv1::BaseController
    def index
        output(forward('get',request.url))
    end
  
    #create a new post to an aspect
    def new
        output(forward('post',request.url))
    end
end