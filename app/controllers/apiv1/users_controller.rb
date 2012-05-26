class Apiv1::UsersController < Apiv1::BaseController
    def show
        output(query('get',request.url))
    end
	
    def create
        output(query('post',request.url, params))
    end

    
    def update
        output(query('put',request.url, params))
    end
end