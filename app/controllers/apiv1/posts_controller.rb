class Apiv1::PostsController < Apiv1::BaseController
  
    def create
        output(query('post',request.url, params))
    end
    
end